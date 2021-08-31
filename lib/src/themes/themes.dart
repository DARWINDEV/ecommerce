import 'package:flutter/material.dart';

import 'package:ecommerce/src/values/constants.dart';

ThemeData theme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10);
  AppBarTheme appBarTheme2 = AppBarTheme(
    centerTitle: true,
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme:
        TextTheme(headline6: TextStyle(color: Color(0xff8B8B8B), fontSize: 18)),
  );
  InputDecorationTheme inputDecorationTheme2 = InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
  TextTheme textTheme2 = TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor));
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Muli',
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: inputDecorationTheme2,
      textTheme: textTheme2,
      appBarTheme: appBarTheme2);
}
