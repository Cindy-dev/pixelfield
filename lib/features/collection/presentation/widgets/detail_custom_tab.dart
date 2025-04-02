import 'package:flutter/material.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/features/collection/presentation/widgets/tasting_notes.dart';
import '../../data/model/collection_model.dart';
import 'details.dart';
import 'history.dart';

class DetailCustomTab extends StatefulWidget {
  final Bottle bottleDetails;
  const DetailCustomTab({super.key, required this.bottleDetails});

  @override
  State<DetailCustomTab> createState() => _DetailCustomTabState();
}

class _DetailCustomTabState extends State<DetailCustomTab> {
  // Index to track the currently selected tab
  int _selectedTabIndex = 0;

  // List of tab titles
  final List<String> _tabTitles = ['Details', 'Tasting notes', 'History'];

  Widget selectedWidget() {
    if (_selectedTabIndex == 0) {
      return DetailsWidget(details: widget.bottleDetails.details!);
    }
    if (_selectedTabIndex == 1) {
      return TastingNotesWidget(
        tastingNotes: widget.bottleDetails.tastingNotes!,
      );
    }
    if (_selectedTabIndex == 2) {
      return HistoryWidget(labelDetails: widget.bottleDetails.labelDetails);
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          margin: const EdgeInsets.symmetric(vertical: 24),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: context.primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              _tabTitles.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                  child: Container(
                    width: 101,
                    height: 28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _selectedTabIndex == index
                          ? context.secondaryColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      _tabTitles[index],
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontSize: 12,
                        color: _selectedTabIndex == index
                            ? context.primaryColor
                            : context.themeData.shadowColor,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        // Tab Content Section
        selectedWidget()
      ],
    );
  }
}
