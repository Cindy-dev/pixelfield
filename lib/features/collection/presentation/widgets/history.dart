import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/margin_util.dart';
import 'package:pixelfield/common/utils/pixelfield_strings.dart';
import 'package:pixelfield/common/utils/svg_render_widget.dart';
import 'package:pixelfield/features/collection/data/model/collection_model.dart';

class HistoryWidget extends StatelessWidget {
  final List<LabelDetail>? labelDetails;
  const HistoryWidget({super.key, required this.labelDetails});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: labelDetails?.length,
      itemBuilder: (context, index) {
        final history = labelDetails?[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgRenderWidget(svgPath: PixelFieldStrings.timeline),
                const XMargin(40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Label",
                      style:
                          context.textTheme.bodyLarge?.copyWith(fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        history?.title ?? "",
                        style: context.textTheme.displayLarge?.copyWith(
                            fontSize: 22, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: history!.description!.map((item) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            item,
                            style: context.textTheme.bodyLarge
                                ?.copyWith(fontSize: 12),
                          ),
                        );
                      }).toList(),
                    ),
                    Container(
                      color: context.primaryColor,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgRenderWidget(
                                  svgPath: PixelFieldStrings.paperClip),
                              const XMargin(8),
                              Text(
                                "Attachments",
                                style: context.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                          const YMargin(8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: history.attachments!.map((item) {
                              return Container(
                                width: 64,
                                height: 64,
                                margin: const EdgeInsets.only(right: 8),
                                color: context.themeData.cardColor
                                    .withValues(alpha:0.8),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        );
      },
    );
  }
}
