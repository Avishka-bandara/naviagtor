import 'package:flutter/material.dart';
import 'package:navigator_app/screens/feed/demo_feed_screen.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Feed Screen"),
            ElevatedButton(onPressed: () {}, child: Text("Go to feed page")),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoFeedScreen()),
                );
              },
              child: Text("Go to demo feed page"),
            ),
          ],
        ),
      ),
    );
  }
}
