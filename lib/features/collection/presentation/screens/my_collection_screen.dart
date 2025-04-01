import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield/common/utils/app_extension.dart';
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
  void initState() {
    //gives access to the bloc
    context.read<CollectionBloc>().add(LoadCollection());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Get the instance from GetIt
      create: (context) => sl<CollectionBloc>(),
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
              BlocBuilder<CollectionBloc, CollectionState>(
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
                             // childAspectRatio: 1.0,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return MyCollectionGridTile(
                          collectionData: state.collection[index],
                        );
                      },
                    );
                  case CollectionError():
                    return Text(
                      state.message,
                      style: context.textTheme.bodyLarge
                          ?.copyWith(color: context.themeData.cardColor),
                    );
                  default:
                    return const Center(child: Text("No Data"));
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
