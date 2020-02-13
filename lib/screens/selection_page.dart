import 'package:flutter/material.dart';
import 'package:quiz_game/utils/custom_card.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 35.0, horizontal: 0.0),
                  child: Text(
                    'Quiz Game',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                CustomCard('Math', 'calculator', Colors.amber),
                CustomCard('Art', 'movie', Colors.lightBlue),
                CustomCard('Sport', 'sports', Colors.lightGreen),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
