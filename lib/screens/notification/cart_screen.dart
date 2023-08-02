import 'package:flutter/material.dart';

import 'components/body.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notify";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your notifications",
            style: TextStyle(color: Colors.black),
          ),
      ]
      ),
    );
  }
}
