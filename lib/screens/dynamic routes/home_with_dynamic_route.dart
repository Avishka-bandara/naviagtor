import 'package:flutter/material.dart';

class HomeWithDynamicRoute extends StatelessWidget {
  const HomeWithDynamicRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/screen1", arguments: "hello");
              },
              child: Text("Screen 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/screen2", arguments: "hi");
              },
              child: Text("Screen 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/screen3", arguments: "hey");
              },
              child: Text("Screen 3"),
            ),
          ],
        ),
      ),
    );
  }
}
