import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield/features/collection/data/repository/collection_service.dart';
import '../data/repository/connectivity_service.dart';
import 'collection_event.dart';
import 'collection_state.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  final CollectionService collectionService;
  final ConnectivityService connectivityService;

  CollectionBloc(
      {required this.collectionService, required this.connectivityService})
      : super(CollectionInitial()) {
    on<LoadCollection>((event, emit) async {
      emit(CollectionLoading());
      try {
        // 1. Try loading cached data first
        final cachedData = collectionService.getCollectionFromCache();
        if (cachedData.isNotEmpty) {
          emit(CollectionLoaded(cachedData));
        }

        // 2. Check connectivity and refresh if possible
        final isConnected = await connectivityService.isConnected;
        if (isConnected) {
          final refreshedData = await collectionService.refreshData();
          if (refreshedData.isNotEmpty) {
            emit(CollectionLoaded(refreshedData));
          } else {
            // Handle case where refresh returns empty data but cache exists
            if (cachedData.isNotEmpty) {
              emit(CollectionLoaded(cachedData));
            } else {
              emit(CollectionError("No data received from refresh"));
            }
          }
        } else if (cachedData.isEmpty) {
          emit(CollectionError("No internet connection and no cached data"));
        }
      } catch (e,s) {
        print(e);
        print(s);
        emit(CollectionError("Error loading collections: ${e.toString()}"));
      }
    });

    on<RefreshCollection>((event, emit) async {
      try {
        if (await connectivityService.isConnected) {
          var refreshedData = await collectionService.refreshData();
          emit(CollectionLoaded(refreshedData));
        } else {
          emit(CollectionError("No internet connection for refresh."));
        }
      } catch (e) {
        emit(CollectionError(e.toString()));
      }
    });
  }
}
