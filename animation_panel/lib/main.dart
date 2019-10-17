import 'package:animation_panel/screens/MainScreen.dart';
import 'package:flutter/material.dart';

void main(){runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      theme: ThemeData(
        primaryColor: Colors.yellow[500],
        canvasColor: Colors.white,
        ),
    );
  }
}

