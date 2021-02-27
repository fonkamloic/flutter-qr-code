import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'injection.dart';
import 'routes/router.gr.dart' as generatedRoute;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.development);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ExtendedNavigator(
            navigatorKey: navigatorKey,
            observers: [],
            router: generatedRoute.Router());
      },
    );
  }
}
