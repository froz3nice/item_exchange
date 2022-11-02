import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden_pro/bookings/bookings.dart';
import 'package:garden_pro/bottom_navigation.dart';
import 'package:garden_pro/home.dart';
import 'package:garden_pro/profile/profile.dart';
import 'package:garden_pro/routers/router_cubit.dart';
import 'package:garden_pro/routers/router_state.dart';
import 'package:garden_pro/tabs/tab_item.dart';

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
    return Scaffold(
      bottomNavigationBar: BlocBuilder<RouterCubit, RouterState>(
          builder: (context, state) => WillPopScope(
              child: Scaffold(
                bottomNavigationBar: BottomNavigation(
                  onSelectTab: _selectTab,
                  state: state,
                ),
                body: _buildBody(state.tabItem),
              ),
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
