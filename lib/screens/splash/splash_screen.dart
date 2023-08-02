import 'package:ecomapp/screens/splash/components/body.dart';
import 'package:ecomapp/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen  extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName ="/spllash";
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
