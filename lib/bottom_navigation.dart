import 'package:flutter/material.dart';
import 'package:garden_pro/routers/router_state.dart';
import 'package:garden_pro/tabs/tab_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    required this.onSelectTab,
    required this.state});
  final RouterState state;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.home),
        _buildItem(TabItem.bookings),
        _buildItem(TabItem.profile),
      ],
      onTap: (index) => onSelectTab(TabItem.values[index]),
      currentIndex: state.index,
      selectedItemColor: Colors.amber.shade900,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.layers,
        color: Colors.amber.shade300,
      ),
      label: tabName[tabItem],
    );
  }
}
