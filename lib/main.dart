import 'package:flutter/material.dart';
import 'Screens/BMI_Screen.dart';
import 'const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const BMIScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
