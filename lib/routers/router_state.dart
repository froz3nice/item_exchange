
import 'package:equatable/equatable.dart';

import '../tabs/tab_item.dart';

class RouterState extends Equatable {
  final TabItem tabItem;
  final int index;

  RouterState(this.tabItem, this.index);

  @override
  List<Object> get props => [this.tabItem, this.index];
}
