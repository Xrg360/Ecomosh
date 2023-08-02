import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme(){

  return ThemeData(
    fontFamily:"Muli",
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: kTextColor),
      bodyText1: TextStyle(color: kTextColor),
    ),

    inputDecorationTheme: inputDecorationTheme(),

    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );
}

InputDecorationTheme inputDecorationTheme(){
  OutlineInputBorder outlineInputBorder =  OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,

  );
}