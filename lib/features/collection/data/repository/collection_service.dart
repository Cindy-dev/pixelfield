import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:pixelfield/common/service/hive_strings.dart';
import 'package:pixelfield/features/collection/data/model/collection_model.dart';
import '../../../../common/service/hive_repository.dart';

class CollectionService {
  final HiveRepository hiveRepository;
  CollectionService({required this.hiveRepository});

  // Load JSON data
  Future<List<CollectionModel>> loadCollectionData() async {
    final String response =
        await rootBundle.loadString('assets/json/collection_data.json');
    final data = json.decode(response) as List;
    print(data);
    return data.map((json) => CollectionModel.fromJson(json)).toList();
  }

// Save data locally
  Future<void> saveCollectionToCache(List<CollectionModel> collection) async {
    await hiveRepository.add<List<CollectionModel>>(
      item: collection,
      key: HiveStrings.collectionKey,
      name: HiveStrings.collectionBox,
    );
  }

  // Load data from local cache
  List<CollectionModel> getCollectionFromCache() {
    return hiveRepository.get<List<CollectionModel>>(
      key: HiveStrings.collectionKey,
      name: HiveStrings.collectionBox,
    );
  }

  // Refresh data: load from asset, then update the cache if internet is available
  Future<List<CollectionModel>> refreshData() async {
    List<CollectionModel> data = await loadCollectionData();
    await saveCollectionToCache(data);
    return data;
  }
}
