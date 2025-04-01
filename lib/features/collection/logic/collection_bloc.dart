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
        // First, try to load from cache.
        // var cachedData = await collectionService.loadFromCache();
        // if (cachedData.isNotEmpty) {
        //   emit(CollectionLoaded(cachedData));
        // }
        // If connected, refresh data.
        // if (await connectivityService.isConnected) {
        //   var refreshedData = await collectionService.refreshData();
        //   emit(CollectionLoaded(refreshedData));
        // } else if (cachedData.isEmpty) {
        // No data at all
        emit(CollectionError("No data available and no internet connection."));
        // }
      } catch (e) {
        emit(CollectionError(e.toString()));
      }
    });

    // on<RefreshCollection>((event, emit) async {
    //   try {
    //     if (await connectivityService.isConnected) {
    //       var refreshedData = await collectionService.refreshData();
    //       emit(CollectionLoaded(refreshedData));
    //     } else {
    //       emit(CollectionError("No internet connection for refresh."));
    //     }
    //   } catch (e) {
    //     emit(CollectionError(e.toString()));
    //   }
    // });
  }
}
