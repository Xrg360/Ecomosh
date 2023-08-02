import 'package:ecomapp/screens/login_success/body/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});
  static String routeName = "/loginsuccess";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
