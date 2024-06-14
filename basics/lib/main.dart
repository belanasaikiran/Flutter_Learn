// ignore_for_file: prefer_const_constructors

import 'package:basics/Pages/first_page.dart';
import 'package:basics/Pages/home_page.dart';
import 'package:basics/Pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void userTapped() {
    print("userTapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        home: FirstPage(),
        routes: {
          '/firstpage': (context) => FirstPage(),
          '/homepage': (context) => HomePage(),
          '/settingspage': (context) => SettingsPage(),
        });
  }
}
