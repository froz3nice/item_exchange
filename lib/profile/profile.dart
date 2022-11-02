import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:garden_pro/login/LoginPage.dart';
import '../AuthService.dart';
import '../generated/l10n.dart';
import '../routers/route.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            S.current.profile,
          ),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(25),
            child: ElevatedButton(
              child: Text(
                'SignUp',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, register);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: ElevatedButton(
              child: Text(
                'Logout',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                logout();
                Navigator.pushNamed(context, register);
              },
            ),
          ),
        ])));
  }

  void logout() async {
    final message = await AuthService().signOut();
    if (message!.contains('Success')) {}
    log(message);
  }
}
