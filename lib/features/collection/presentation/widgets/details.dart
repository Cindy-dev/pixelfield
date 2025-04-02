import 'package:flutter/material.dart';
import '../../data/model/collection_model.dart';
import 'details_widget_tile.dart';

class DetailsWidget extends StatelessWidget {
  final Details details;
  const DetailsWidget({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsWidgetTile(
          leading: "Distillery",
          trailing: details.distillery ?? "",
        ),
        DetailsWidgetTile(
          leading: "Region",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "Country",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "Type",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "Age statement",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "Filled",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "Bottled",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "Cask number",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "ABV",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "Size",
          trailing: details.region ?? "",
        ),
        DetailsWidgetTile(
          leading: "Finish",
          trailing: details.region ?? "",
        ),
      ],
    );
  }
}
