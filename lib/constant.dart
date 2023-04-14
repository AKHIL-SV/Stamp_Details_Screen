import 'package:flutter/material.dart';

// colors
const Color purpleColor = Color(0xffA8B1FF);
const Color backButtonColor = Color(0xff949EFF);
const Color white = Colors.white;

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
