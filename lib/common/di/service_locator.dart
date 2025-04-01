import 'package:get_it/get_it.dart';
import 'package:pixelfield/features/collection/data/repository/collection_service.dart';
import 'package:pixelfield/features/collection/data/repository/connectivity_service.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton<CollectionService>(() => CollectionService());
  sl.registerLazySingleton<ConnectivityService>(() => ConnectivityService());
}
