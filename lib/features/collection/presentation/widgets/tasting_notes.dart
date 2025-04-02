import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/margin_util.dart';
import 'package:pixelfield/common/utils/pixelfield_strings.dart';
import 'package:pixelfield/common/utils/svg_render_widget.dart';
import 'package:pixelfield/features/collection/data/model/collection_model.dart';
import 'package:pixelfield/features/collection/presentation/widgets/tasting_notes_tile.dart';

class TastingNotesWidget extends StatelessWidget {
  final TastingNotes tastingNotes;
  const TastingNotesWidget({super.key, required this.tastingNotes});

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
        const YMargin(16),
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
        const YMargin(8),
        const TastingNotesTile(title: "Nose"),
        const TastingNotesTile(title: "Palate"),
        const TastingNotesTile(title: "Finish"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your notes",
                style: context.textTheme.headlineLarge
                    ?.copyWith(fontWeight: FontWeight.w400, fontSize: 22),
              ),
              Icon(
                Icons.arrow_back,
                color: context.themeData.cardColor,
              )
            ],
          ),
        ),
        const TastingNotesTile(title: "Nose"),
        const TastingNotesTile(title: "Palate"),
        const TastingNotesTile(title: "Finish"),
      ],
    );
  }
}
