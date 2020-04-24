import 'package:flutter/material.dart';


class AppTheme {
  final ThemeData theme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: Color(0XFF2dbdc2),
    accentColor: Color(0XFFfd6660),

    // text colors


    // Define the default font family.
    fontFamily: 'Roboto-Regular',
    focusColor: Color(0XFF2dbdc2),
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.grey),
      body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
}