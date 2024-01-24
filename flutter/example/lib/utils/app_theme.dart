import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontSize: 22,
      color: Colors.red,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      fontSize: 24,
      color: Colors.black12,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      color: Colors.amber,
      fontWeight: FontWeight.w300,
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.amber,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
      color: Colors.black87,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.red,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.black45,
    selectedLabelStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w800,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  ),
);
