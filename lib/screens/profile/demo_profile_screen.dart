import 'package:flutter/material.dart';

class DemoProfileScreen extends StatelessWidget {
  const DemoProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo profile Screen")),
      body: SafeArea(child: Center(child: Text("Demo profile Screen"))),
    );
  }
}
