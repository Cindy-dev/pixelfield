import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import '../../../../common/utils/margin_util.dart';

class TastingNotesTile extends StatelessWidget {
final String title;
const TastingNotesTile({
super.key,
required this.title,
});

@override
Widget build(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 8),
    padding: const EdgeInsets.all(16),
    height: 136,
    width: context.deviceWidth(),
    color: context.primaryColor.withValues(alpha:0.7),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.displayLarge
              ?.copyWith(fontWeight: FontWeight.w400, fontSize: 22),
        ),
        const YMargin(4),
        Text(
          "Description",
          style: context.textTheme.displayLarge
              ?.copyWith(fontWeight: FontWeight.w400, fontSize: 22),
        ),
        Text(
          "Description",
          style: context.textTheme.displayLarge
              ?.copyWith(fontWeight: FontWeight.w400, fontSize: 22),
        ),
        Text(
          "Description",
          style: context.textTheme.displayLarge
              ?.copyWith(fontWeight: FontWeight.w400, fontSize: 22),
        ),
      ],
    ),
  );
}
}
