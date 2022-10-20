
import 'package:bloc/bloc.dart';
import 'package:garden_pro/routers/router_state.dart';

import '../tabs/tab_item.dart';

class RouterCubit extends Cubit<RouterState> {
  RouterCubit() : super(RouterState(TabItem.home, 0));

  void getNavBarItem(TabItem navbarItem) {
    switch (navbarItem) {
      case TabItem.home:
        emit(RouterState(TabItem.home, 0));
        break;
      case TabItem.bookings:
        emit(RouterState(TabItem.bookings, 1));
        break;
      case TabItem.profile:
        emit(RouterState(TabItem.profile, 2));
        break;
    }
  }
}