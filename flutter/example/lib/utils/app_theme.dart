import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  textTheme: const TextTheme(
    titleSmall: TextStyle(
        fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w700),
    bodySmall: TextStyle(
      fontSize: 14,
      color: Colors.black87,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      color: Colors.black45,
      fontWeight: FontWeight.w300,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.amber,
  )
);
