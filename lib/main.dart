import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pixelfield/common/design_system/theme/app_theme.dart';
import 'package:pixelfield/features/collection/logic/collection_bloc.dart';
import 'common/di/service_locator.dart';
import 'common/service/hive_repository.dart';
import 'common/service/hive_strings.dart';
import 'common/utils/pixelfield_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set up dependency injection
  setupLocator();
  await Hive.initFlutter();
  await HiveRepository.openHives([HiveStrings.collectionBox]);
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (value) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<CollectionBloc>()),
      ],
      child: MaterialApp(
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        routes: PixelFieldRoutes.routes,
        initialRoute: PixelFieldRoutes.splashScreen,
        onGenerateRoute: PixelFieldRoutes.generateRoute,
      ),
    );
  }
}
