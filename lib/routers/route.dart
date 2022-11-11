import 'package:flutter/material.dart';
import 'package:garden_pro/home.dart';
import 'package:garden_pro/ui/profile/profile.dart';

import '../ui/app.dart';
import '../ui/bookings/bookings.dart';
import '../ui/login/LoginPage.dart';
import '../ui/login/RegisterPage.dart';

const String homeRoute = '/home';
const String itemsRoute = '/items';
const String profileRoute = '/profile';
const String bookingsRoute = '/bookings';
const String login = '/login';
const String register = '/register';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => SafeArea(child: App()));
      case itemsRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case bookingsRoute:
        return MaterialPageRoute(builder: (_) => BookingsPage());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}