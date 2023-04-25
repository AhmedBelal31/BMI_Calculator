import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark)),
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.white);


