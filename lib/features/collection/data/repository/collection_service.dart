import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:pixelfield/features/collection/data/model/collection_model.dart';

class CollectionService {
  // Load JSON data
  Future<List<CollectionModel>> loadCollectionData() async {
    final String response =
        await rootBundle.loadString('assets/json/collection_data.json');
    final data = json.decode(response) as List;
    return data.map((json) => CollectionModel.fromJson(json)).toList();
  }
}
