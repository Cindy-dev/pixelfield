import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:pixelfield/common/service/hive_strings.dart';
import 'package:pixelfield/features/collection/data/model/collection_model.dart';
import '../../../../common/service/hive_repository.dart';

class CollectionService {
  final HiveRepository hiveRepository;
  CollectionService({required this.hiveRepository});

  // Load JSON data
  Future<List<Bottle>> loadCollectionData() async {
    try {
      // Load the JSON string from assets
      final String response =
          await rootBundle.loadString('assets/json/collection_data.json');
      // Decode the JSON string
      final data = (json.decode(response) as Map)['collections'] as List;
      // Convert to List<CollectionModel>
      return data
          .map(
            (value) => Bottle.fromJson(value as Map<String, dynamic>),
          )
          .toList();
    } catch (e) {
      // Handle any errors
      return [];
    }
  }

// Save data locally
  Future<void> saveCollectionToCache(List<Bottle> collection) async {
    await hiveRepository.add<List<Bottle>>(
      item: collection,
      key: HiveStrings.collectionKey,
      name: HiveStrings.collectionBox,
    );
  }

  // Load data from local cache
  List<Bottle> getCollectionFromCache() {
    final cachedData = hiveRepository.get<List<dynamic>?>(
          key: HiveStrings.collectionKey,
          name: HiveStrings.collectionBox,
        ) ??
        [];
    return cachedData
        .map((item) => Bottle.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  // Refresh data: load from asset, then update the cache if internet is available
  Future<List<Bottle>> refreshData() async {
    List<Bottle> data = await loadCollectionData();
    await saveCollectionToCache(data);
    return data;
  }
}
