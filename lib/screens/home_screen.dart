import 'package:flutter/material.dart';
import 'package:sample/screens/settings_screen.dart';

import '../custom_card_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black87,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "My App",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.white),
        ),
        backgroundColor: Colors.indigo.shade300,
        centerTitle: true,
      ),
      //body: Text("Hello World!"),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          // children: [
          //   Text("Hello Flutter!", style: TextStyle(color: Colors.white70)),
          //   SizedBox(height: 50),
          //   Image.asset(
          //     'assets/images/jitpack_logo.png',
          //     width: 200,
          //     height: 200,
          //     fit: BoxFit.contain,
          //   ),
          //   Image.asset(
          //     'assets/images/jitpack_logo.png',
          //     // width: 300,
          //     // height: 50,
          //     fit: BoxFit.contain,
          //   ),
          // ],
          // children: [
          //   ElevatedButton(
          //     onPressed: () => print("Clicked Elevated Button..."),
          //     style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
          //     child: const Text(
          //       "Click Me!",
          //       style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
          //     ),
          //   ),
          //   TextButton(
          //     onPressed: () => print("Clicked Text Button..."),
          //     child: Text("Click Me Text!",),
          //       style: TextButton.styleFrom(backgroundColor: Colors.amberAccent)
          //   ),
          //   IconButton(
          //     onPressed: () => print("Clicked Icon Button..."),
          //     icon: Icon(Icons.arrow_forward_ios, color: Colors.redAccent, size: 40)
          //   ),
          // ],
          children: [
            Container(
              // width: 300,
              // height: 200,
              //padding: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(vertical: 20),
              margin: EdgeInsets.all(40),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                //color: Colors.blueGrey,
                color: Colors.white,
                //borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 6,
                    spreadRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
                //border: Border.all(width: 4, color: Colors.black26),
                // gradient: LinearGradient(
                //   colors: [Colors.red, Colors.white],
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                // ),
              ),
              child: Text(
                "Hello!",
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(top: 48),
              child: Image.asset('assets/images/jitpack_logo.png'),
            ),
            SizedBox(width: 200, height: 80, child: CustomCardView()),
            Padding(
              padding: EdgeInsetsGeometry.only(top: 48),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ),
                  );
                },
                child: const Text("Go to Settings"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
