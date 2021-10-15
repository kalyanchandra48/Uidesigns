import 'package:flutter/material.dart';
import 'Pages/Homepage/HomePage_Component/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SeventhDesign(),
    ),
  );
}

class SeventhDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Stack(
        children: <Widget>[
          Half_Container(),
          Positioned(
            top: 240,
            left: 30,
            child: Profile(),
          ),
          Positioned(
            top: 405,
            left: 31,
            child: Balance(),
          ),
          Positioned(
            top: 630,
            left: 29,
            child: Text(
              'Budgets',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Positioned(
            top: 690,
            left: 30,
            child: Budgets(),
          ),
        ],
        overflow: Overflow.visible,
      ),
    );
  }
}
