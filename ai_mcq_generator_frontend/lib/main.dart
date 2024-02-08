import 'package:flutter/material.dart';
import 'themes/MyThemeData.dart';
import 'constants/main_string_constants.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData().MyThemeDataForApp(context),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),

      debugShowCheckedModeBanner: false,

      initialRoute: "/",

      routes: {
        homeRoute:(context) => HomePage(),
      }
    );
  }
}