import 'package:flutter/material.dart';
import 'package:quiz_game/screens/home_page.dart';

class CustomCard extends StatelessWidget {
  final String cardName;
  final String cardImage;
  final Color cardColor;

  CustomCard(this.cardName, this.cardImage, this.cardColor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 8.0,
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage('images/$cardImage.png'),
              ),
              SizedBox(
                width: 35.0,
              ),
              Column(
                children: <Widget>[
                  Text(
                    cardName.toUpperCase(),
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Munich Regular',
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(cardName),
                        ),
                      );
                    },
                    child: Text('PLAY NOW'),
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
