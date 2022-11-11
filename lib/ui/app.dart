import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden_pro/bottom_navigation.dart';
import 'package:garden_pro/home.dart';
import 'package:garden_pro/routers/router_cubit.dart';
import 'package:garden_pro/routers/router_state.dart';
import 'package:garden_pro/tabs/tab_item.dart';
import 'package:garden_pro/ui/profile/profile.dart';

import 'bookings/bookings.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  var _currentTab = TabItem.home;

  void _selectTab(TabItem tabItem) {
    _currentTab = tabItem;
    BlocProvider.of<RouterCubit>(context).getNavBarItem(tabItem);
  }

  @override
  Widget build(BuildContext context) {
      return mainPage();
  }

  Scaffold mainPage() {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<RouterCubit, RouterState>(
          builder: (context, state) => WillPopScope(
              child: page(state),
              onWillPop: () async {
                if (_currentTab != TabItem.home) {
                  _selectTab(TabItem.home);
                  // back button handled by app
                  return false;
                }
                return true;
              })),
    );
  }

  Widget page(RouterState state) {
    // if (!AuthService.isLoggedIn()) {
    //   return LoginPage();
    // } else {
      return Scaffold(
        bottomNavigationBar: BottomNavigation(
          onSelectTab: _selectTab,
          state: state,
        ),
        appBar: null,
        body: _buildBody(state.tabItem),
      );
    // }
  }

  Widget _buildBody(TabItem tabItem) {
    if (tabItem == TabItem.home) {
      return HomePage();
    } else if (tabItem == TabItem.bookings) {
      return BookingsPage();
    } else if (tabItem == TabItem.profile) {
      return ProfilePage();
    }
    return Container();
  }
}
