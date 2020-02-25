import 'package:flutter/material.dart';
import 'package:quiz_game/screens/selection_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}