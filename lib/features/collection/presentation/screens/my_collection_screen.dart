import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
import 'package:pixelfield/common/utils/margin_util.dart';
import 'package:pixelfield/common/utils/pixelfield_button.dart';
import 'package:pixelfield/common/utils/pixelfield_strings.dart';
import 'package:pixelfield/common/utils/svg_render_widget.dart';
import '../../../../common/di/service_locator.dart';
import '../../logic/collection_bloc.dart';
import '../../logic/collection_event.dart';
import '../../logic/collection_state.dart';
import '../widgets/my_collection_grid_tile.dart';

class MyCollectionScreen extends StatefulWidget {
  const MyCollectionScreen({super.key});

  @override
  State<MyCollectionScreen> createState() => _MyCollectionScreenState();
}

class _MyCollectionScreenState extends State<MyCollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Get the instance from GetIt
      create: (_) => sl<CollectionBloc>(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My collection",
                    style: context.textTheme.displayLarge
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                  SvgRenderWidget(svgPath: PixelFieldStrings.notification),
                ],
              ),
              const YMargin(30),
              Expanded(
                child: BlocBuilder<CollectionBloc, CollectionState>(
                    builder: (context, state) {
                  switch (state) {
                    case CollectionLoading():
                      return CupertinoActivityIndicator(
                          color: context.secondaryColor);
                    case CollectionLoaded():
                      return GridView.builder(
                        itemCount: state.collection.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                                childAspectRatio: 0.5,
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return MyCollectionGridTile(
                            collectionData: state.collection[index],
                          );
                        },
                      );
                    case CollectionError():
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.message,
                            style: context.textTheme.bodyLarge
                                ?.copyWith(color: context.themeData.cardColor),
                          ),
                          const YMargin(20),
                          PixelFieldButton(
                            text: 'Reload Data',
                            onPressed: () {
                              final bloc = context.read<CollectionBloc>();
                              if (!bloc.isClosed) {
                                bloc.add(RefreshCollection());
                              }
                            }
                          ),
                        ],
                      );
                    default:
                      return const Center(child: Text("No Data"));
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
