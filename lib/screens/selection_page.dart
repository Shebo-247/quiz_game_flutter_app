import 'package:flutter/material.dart';
import 'package:quiz_game/utils/custom_card.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              backgroundColor: Color(0xFFc23c3c),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Quiz Game",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                background: Image.asset(
                  'images/toolbar_bg.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
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
