import 'package:flutter/material.dart';

class DemoFeedScreen extends StatelessWidget {
  const DemoFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo Feed Screen")),
      body: SafeArea(child: Center(child: Text("Demo Feed Screen"))),
    );
  }
}
