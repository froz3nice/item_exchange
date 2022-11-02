import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:garden_pro/Result.dart';

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
                S.current.signUp,
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
                S.current.logout,
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
    if (message is ResultSuccess) {
      log(message.value);
    }
    if (message is ResultError) {
      log(message.exception);
    }
  }
}
