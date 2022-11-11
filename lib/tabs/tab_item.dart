import '../generated/l10n.dart';

enum TabItem { home, bookings, profile }

Map<TabItem, String> tabName = {
  TabItem.home: S.current.home,
  TabItem.bookings: S.current.Bookings,
  TabItem.profile: S.current.profile,
};