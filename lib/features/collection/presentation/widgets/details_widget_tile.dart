import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';

class DetailsWidgetTile extends StatelessWidget {
  const DetailsWidgetTile({
    super.key,
    required this.leading,
    required this.trailing,
  });

  final String leading;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leading,
            style: context.textTheme.bodyLarge
                ?.copyWith(color: context.themeData.cardColor),
          ),
          Text(
            trailing,
            style: context.textTheme.bodyLarge
                ?.copyWith(color: context.colors.textColor),
          )
        ],
      ),
    );
  }
}
