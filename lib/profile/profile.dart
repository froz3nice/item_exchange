import 'package:flutter/material.dart';

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
      body: Container(
          color: Colors.amberAccent,
          child: Center(
              child: ElevatedButton(
            child: Text("push me"),
            onPressed: () {
              Navigator.pushNamed(context, register);
            },
          ))),
    );
  }
}
