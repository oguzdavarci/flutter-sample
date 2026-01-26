import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/zikirmatik.png', width: 300),
                Positioned(
                  top: 50,
                  right: 80,
                  child: _counterText(),
                ),
                Positioned(
                  bottom: 30,
                  child: _incrementButton(),
                ),
                Positioned(
                  right: 76,
                  bottom: 114,
                  child: _resetButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Text _counterText() {
  return Text(
    '0',
    style: TextStyle(
      fontFamily: 'DS-Digital',
      fontSize: 50,
      color: Colors.white,
    ),
  );
}

GestureDetector _incrementButton() {
  return GestureDetector(
    onTap: () => print('Clicked Increment'),
    child: Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.circular(60),
      ),
    ),
  );
}

GestureDetector _resetButton() {
  return GestureDetector(
    onTap: () => print('Clicked Reset'),
    child: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        //color: Colors.green,
        borderRadius: BorderRadius.circular(60),
      ),
    ),
  );
}