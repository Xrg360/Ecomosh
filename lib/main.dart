import 'package:ecomapp/constants.dart';
import 'package:ecomapp/routs.dart';
import 'package:ecomapp/screens/profile/profile_screen.dart';
import 'package:ecomapp/screens/splash/splash_screen.dart';
import 'package:ecomapp/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme() ,
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

