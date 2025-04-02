import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/margin_util.dart';
import 'package:pixelfield/common/utils/pixelfield_button.dart';
import 'package:pixelfield/common/utils/pixelfield_strings.dart';
import 'package:pixelfield/features/collection/data/model/collection_model.dart';
import 'package:pixelfield/features/collection/presentation/widgets/details.dart';
import 'package:pixelfield/features/collection/presentation/widgets/history.dart';
import 'package:pixelfield/features/collection/presentation/widgets/tasting_notes.dart';

import '../../../../common/utils/svg_render_widget.dart';

class BottleDetailScreen extends StatefulWidget {
  final Bottle bottleDetails;
  const BottleDetailScreen({super.key, required this.bottleDetails});

  @override
  State<BottleDetailScreen> createState() => _BottleDetailScreenState();
}

class _BottleDetailScreenState extends State<BottleDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.deviceHeight(),
        width: context.deviceWidth(),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(PixelFieldStrings.background),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.bottleDetails.collection ?? "",
                      style:
                          context.textTheme.bodyLarge?.copyWith(fontSize: 12),
                    ),
                    InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () => Navigator.pop(context),
                      child: CircleAvatar(
                        backgroundColor: context.primaryColor,
                        child: Icon(
                          Icons.close,
                          color: context.themeData.shadowColor,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 16, bottom: 52),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: context.themeData.scaffoldBackgroundColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(PixelFieldStrings.genuineIcon),
                          const XMargin(8),
                          Text(
                            "Genuine Bottle (Unopened",
                            style: context.textTheme.displaySmall
                                ?.copyWith(fontSize: 14),
                          )
                        ],
                      ),
                      SvgRenderWidget(
                        svgPath: PixelFieldStrings.arrowDown,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image.asset(widget.bottleDetails.image ?? ""),
                    const YMargin(39),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: context.themeData.scaffoldBackgroundColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bottle ${widget.bottleDetails.bottleNumber ?? ""}",
                            style: context.textTheme.bodyLarge
                                ?.copyWith(fontSize: 12),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: Text.rich(
                              TextSpan(
                                text: widget.bottleDetails.name ?? "",
                                style: context.textTheme.displayLarge?.copyWith(
                                    fontSize: 32, fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                    text: " ${widget.bottleDetails.age ?? ""}",
                                    style: context.textTheme.displayLarge
                                        ?.copyWith(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w500,
                                            color: context.secondaryColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "#${widget.bottleDetails.id ?? ""}",
                            style: context.textTheme.displayLarge?.copyWith(
                                fontSize: 22, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: context.deviceHeight() * 0.7,
                            child: DefaultTabController(
                              length: 3,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 26),
                                    padding: const EdgeInsets.all(2),
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: context.primaryColor,
                                    ),
                                    child: TabBar(
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      dividerColor: Colors.transparent,
                                      indicator: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: context.secondaryColor),
                                      labelColor: context.primaryColor,
                                      labelStyle: context.textTheme.bodyLarge
                                          ?.copyWith(fontSize: 12),
                                      unselectedLabelStyle: context
                                          .textTheme.bodyLarge
                                          ?.copyWith(fontSize: 12),
                                      unselectedLabelColor:
                                          context.themeData.shadowColor,
                                      tabs: const [
                                        Tab(child: Text("Details")),
                                        Tab(child: Text("Tasting notes")),
                                        Tab(child: Text("History")),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        DetailsWidget(
                                            details:
                                                widget.bottleDetails.details!),
                                        const TastingNotesWidget(),
                                        const HistoryWidget(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const YMargin(32),
                PixelFieldButton(
                    leading: const Icon(Icons.add),
                    text: "Add to my collection",
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
