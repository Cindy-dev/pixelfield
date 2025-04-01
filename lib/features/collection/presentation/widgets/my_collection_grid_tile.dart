import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/margin_util.dart';
import 'package:pixelfield/common/utils/pixelfield_routes.dart';
import '../../data/model/collection_model.dart';

class MyCollectionGridTile extends StatelessWidget {
  final Bottle collectionData;
  const MyCollectionGridTile({
    super.key,
    required this.collectionData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(PixelFieldRoutes.bottleDetailScreen),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
        decoration:
            BoxDecoration(color: context.themeData.scaffoldBackgroundColor),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(collectionData.image ?? ""),
            const YMargin(18),
            Text(
              collectionData.name ?? "",
              style: context.textTheme.displayLarge
                  ?.copyWith(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            Text(
              " ${collectionData.year ?? ""} #${collectionData.id ?? ""}",
              style: context.textTheme.displayLarge
                  ?.copyWith(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            Text(
              "(${collectionData.bottleNumber ?? ""})",
              style: context.textTheme.bodyLarge?.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
