import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.pushNamed(context,'/ProfilePage'),
        child: Center(
          child: Text('setting page'),
        ),
      ),
    );
  }
}