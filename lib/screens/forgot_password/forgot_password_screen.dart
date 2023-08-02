import 'package:ecomapp/screens/forgot_password/body/body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Forgot Passoword"),
      ),
      body: Body(),
    );
  }
}
