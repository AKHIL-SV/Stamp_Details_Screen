import 'package:flutter/material.dart';

// colors
const Color purpleColor = Color(0xffA8B1FF);
const Color backButtonColor = Color(0xff949EFF);
const Color white = Colors.white;
const Color black = Colors.black;
const Color gray = Color(0xffB5B5B5);
const Color darkGray = Color(0xff454545);

// theme

final theme = ThemeData(
  primaryColor: purpleColor,
  canvasColor: purpleColor,
  fontFamily: 'NotoSansJP',
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
);

// dates
const List dates = [
  '2021 / 11 / 18',
  '2021 / 11 / 17',
  '2021 / 11 / 16',
  '2021 / 11 / 13',
  '2021 / 11 / 12',
];
