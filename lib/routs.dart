import 'package:ecomapp/screens/cart/cart_screen.dart';
import 'package:ecomapp/screens/details/details_screen.dart';
import 'package:ecomapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecomapp/screens/home/home.dart';
import 'package:ecomapp/screens/login_success/login_success.dart';
import 'package:ecomapp/screens/notification/cart_screen.dart';
import 'package:ecomapp/screens/profile/profile_screen.dart';
import 'package:ecomapp/screens/sample_screen.dart';
import 'package:ecomapp/screens/sign_in/sign_in_screen.dart';
import 'package:ecomapp/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName:(context)=>const SplashScreen(),
  SignInScreen.routeName:(context)=>const SignInScreen(),
  ForgotPassword.routeName:(context)=>const ForgotPassword(),
  LoginSuccessScreen.routeName:(context)=>const LoginSuccessScreen(),
  Home.routeName:(context)=>const Home(),
  DetailsScreen.routeName:(context)=>const DetailsScreen(),
  CartScreen.routeName:(context)=>CartScreen(),
  ProfileScreen.routeName:(context) => ProfileScreen(),
  NotificationScreen.routeName:(context)=>NotificationScreen(),
  SampleScreen.routeName:(context)=>SampleScreen(),
};