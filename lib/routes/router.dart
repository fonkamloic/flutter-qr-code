import 'package:auto_route/auto_route_annotations.dart';

import '../home.dart';
import '../qr_code_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true, routes: <AutoRoute>[
      MaterialRoute(page: QRHome, initial: true),
      MaterialRoute(page: QRCodeScreen)
    ])
class $Router {}
