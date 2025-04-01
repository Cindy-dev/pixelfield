import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';

import '../../data/model/collection_model.dart';

class MyCollectionGridTile extends StatelessWidget {
  final Bottle collectionData;
  const MyCollectionGridTile({
    super.key,
    required this.collectionData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(color: context.themeData.scaffoldBackgroundColor),
      child: Column(
        children: [Image.asset(collectionData.image ?? "")],
      ),
    );
  }
}