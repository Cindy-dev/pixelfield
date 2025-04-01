import 'package:get_it/get_it.dart';
import 'package:pixelfield/common/service/hive_repository.dart';
import 'package:pixelfield/features/collection/data/repository/collection_service.dart';
import 'package:pixelfield/features/collection/data/repository/connectivity_service.dart';
import '../../features/collection/logic/collection_bloc.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton<CollectionService>(
      () => CollectionService(hiveRepository: sl<HiveRepository>()));
  sl.registerLazySingleton<ConnectivityService>(() => ConnectivityService());
  sl.registerLazySingleton<HiveRepository>(() => HiveRepository());
  sl.registerLazySingleton<CollectionBloc>(
    () => CollectionBloc(
      collectionService: sl<CollectionService>(),
      connectivityService: sl<ConnectivityService>(),
    ),
  );
}
