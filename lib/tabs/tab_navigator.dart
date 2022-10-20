import 'package:flutter/material.dart';
import 'package:garden_pro/tabs/tab_item.dart';

import '../routers/route.dart';

class TabNavigatorRoutes {
  static const String root = homeRoute;
  static const String booking = bookingsRoute;
  static const String profile = profileRoute;
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});

  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        initialRoute: TabNavigatorRoutes.root,
        onGenerateRoute: MyRouter.generateRoute);
  }
}
