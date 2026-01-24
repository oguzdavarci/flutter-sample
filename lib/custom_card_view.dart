import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Colors.amberAccent,
      elevation: 5,
      shadowColor: Colors.blue,
      child: Align(
        alignment: Alignment.center,
        child: Text("Flutter!", style: TextStyle(color: Colors.lightGreen)),
      ),
    );
  }
}