import 'package:flutter/material.dart';
import 'package:pixelfield/common/widgets/custom_scaffold.dart';
import 'package:pixelfield/features/collection/data/model/collection_model.dart';

class BottleDetailScreen extends StatefulWidget {
  final Bottle bottleDetails;
  const BottleDetailScreen({super.key, required this.bottleDetails});

  @override
  State<BottleDetailScreen> createState() => _BottleDetailScreenState();
}

class _BottleDetailScreenState extends State<BottleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold();
  }
}
