import 'package:flutter/material.dart';
import 'package:navigator_app/screens/profile/demo_profile_screen.dart';
import 'package:navigator_app/screens/profile/profile_screen.dart';

class ProfileIndexScreen extends StatelessWidget {
  const ProfileIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(builder: (context) => ProfileScreen());
          case "/profile":
            return MaterialPageRoute(builder: (context) => DemoProfileScreen());
          default:
            return MaterialPageRoute(builder: (context) => ProfileScreen());
        }
      },
    );
  }
}
