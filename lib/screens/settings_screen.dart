import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Settings Screen",
              style: TextStyle(fontSize: 36, color: Colors.lightBlue),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Close Settings"),
            ),
          ],
        ),
      ),
    );
  }
}