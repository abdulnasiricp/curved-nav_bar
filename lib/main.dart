import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'Sanitizar_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curved Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CurvedNavBar(),
    );
  }
}

class CurvedNavBar extends StatefulWidget {
  _CurvedNavBarState createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  Color bgcolor = Colors.blueGrey;
  var txt = "Default Home page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text(
          txt,
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: bgcolor,
        color: Colors.purple,
        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.sanitizer, color: Colors.white)
        ],
        onTap: (index) {
          setState(() {
            if (index == 0) {
              bgcolor = Colors.deepPurple;
              txt = "Home page";
            }
            if (index == 1) {
              bgcolor = Colors.yellowAccent;
              txt = "Search page";
            }
            if (index == 2) {
              bgcolor = Colors.lightBlue;
              txt = "sanitizer page";
            }
          });
        },
      ),
    );
  }
}
