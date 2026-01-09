import 'package:flutter/material.dart';

import 'package:navigator_app/screens/home_with_dynamic_route.dart';
import 'package:navigator_app/screens/screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/screen1":
            return MaterialPageRoute(
              builder: (context) =>
                  Screen(title: "Screen 1 ${settings.arguments}"),
            );
          case "/screen2":
            return MaterialPageRoute(
              builder: (context) =>
                  Screen(title: "Screen 2 ${settings.arguments}"),
            );
          case "/screen3":
            return MaterialPageRoute(
              builder: (context) =>
                  Screen(title: "Screen 3 ${settings.arguments}"),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => HomeWithDynamicRoute(),
            );
        }
      },
    );
  }
}
