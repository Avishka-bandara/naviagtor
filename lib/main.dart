import 'package:flutter/material.dart';
import 'package:navigator_app/naviagtor/navigator.dart';
import 'package:navigator_app/screens/feed/demo_feed_screen.dart';
import 'package:navigator_app/screens/home/home_screen.dart';
import 'package:navigator_app/screens/profile/demo_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: globalNavigatorKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(builder: (context) => HomeScreen());
          case "/feed":
            return MaterialPageRoute(builder: (context) => DemoFeedScreen());
          case "/profile":
            return MaterialPageRoute(builder: (context) => DemoProfileScreen());
          default:
            return MaterialPageRoute(builder: (context) => HomeScreen());
        }
      },
    );
  }
}
