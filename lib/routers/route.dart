import 'package:flutter/material.dart';
import 'package:garden_pro/SecondLevelPage.dart';
import 'package:garden_pro/home.dart';
import 'package:garden_pro/login/LoginPage.dart';
import 'package:garden_pro/login/RegisterPage.dart';
import 'package:garden_pro/profile/profile.dart';

import '../bookings/bookings.dart';

const String homeRoute = '/';
const String profileRoute = '/profile';
const String bookingsRoute = '/bookings';
const String secondLevel = '/profile/secondLevel';
const String login = '/login';
const String register = '/register';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case bookingsRoute:
        return MaterialPageRoute(builder: (_) => BookingsPage());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case secondLevel:
        return MaterialPageRoute(builder: (_) => SecondLevelPage(title: 'Incremention'));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}