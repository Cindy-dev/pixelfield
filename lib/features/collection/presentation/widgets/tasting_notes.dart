import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/margin_util.dart';
import 'package:pixelfield/common/utils/pixelfield_strings.dart';
import 'package:pixelfield/common/utils/svg_render_widget.dart';

class TastingNotesWidget extends StatelessWidget {
  const TastingNotesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 233,
          width: context.deviceWidth(),
          color: context.primaryColor,
          child: SvgRenderWidget(svgPath: PixelFieldStrings.play),
        ),
        Text(
          "Tasting notes",
          style: context.textTheme.displayLarge
              ?.copyWith(fontWeight: FontWeight.w400, fontSize: 22),
        ),
        const YMargin(4),
        Text(
          "by Charles MacLean MBE",
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.themeData.cardColor.withOpacity(0.7),
          ),
        ),
        Container(
          margin: Edge,
          height: 136,
          color: context.primaryColor,
        )
      ],
    );
  }
}
