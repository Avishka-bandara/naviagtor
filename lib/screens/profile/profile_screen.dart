import 'package:flutter/material.dart';
import 'package:navigator_app/screens/profile/demo_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Profile Screen"),
            ElevatedButton(onPressed: () {}, child: Text("Go to Profile page")),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoProfileScreen()),
                );
              },
              child: Text("Go to Profile page"),
            ),
          ],
        ),
      ),
    );
  }
}
