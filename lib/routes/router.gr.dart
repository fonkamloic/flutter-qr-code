// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../home.dart';
import '../qr_code_page.dart';

class Routes {
  static const String qRHome = '/';
  static const String qRCodeScreen = '/q-rcode-screen';
  static const all = <String>{
    qRHome,
    qRCodeScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.qRHome, page: QRHome),
    RouteDef(Routes.qRCodeScreen, page: QRCodeScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    QRHome: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => QRHome(),
        settings: data,
      );
    },
    QRCodeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => QRCodeScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushQRHome() => push<dynamic>(Routes.qRHome);

  Future<dynamic> pushQRCodeScreen() => push<dynamic>(Routes.qRCodeScreen);
}
