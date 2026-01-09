import 'package:flutter/material.dart';
import 'package:navigator_app/naviagtor/navigator.dart';
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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/profile");
              },
              child: Text("Go to Profile page"),
            ),
            ElevatedButton(
              onPressed: () {
                var bar =
                    bottomNavigatorKey.currentWidget as BottomNavigationBar;
                bar.onTap!(0);
                feedNavigatorKey.currentState!.pushNamed("/feed");
              },
              child: Text("Go to demo feed page"),
            ),

            ElevatedButton(
              onPressed: () {
                globalNavigatorKey.currentState!.pushNamed("/profile");
              },
              child: Text("Go to full screen Profile page"),
            ),
          ],
        ),
      ),
    );
  }
}
