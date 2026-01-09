import 'package:flutter/material.dart';
import 'package:navigator_app/screens/feed/demo_feed_screen.dart';
import 'package:navigator_app/screens/feed/feed_screen.dart';

class FeedIndexScreen extends StatelessWidget {
  const FeedIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(builder: (context) => FeedScreen());
          case "/feed":
            return MaterialPageRoute(builder: (context) => DemoFeedScreen());
          default:
            return MaterialPageRoute(builder: (context) => FeedScreen());
        }
      },
    );
  }
}
