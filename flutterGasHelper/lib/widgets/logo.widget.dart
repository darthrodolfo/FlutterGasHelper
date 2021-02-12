import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Container(
          child: Image.asset(
            'assets/images/aog-white.png',
            height: 120,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        RichText(
          text: TextSpan(
              text: '',
              style: TextStyle(
                fontFamily: 'Roboto',
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Alcool',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  ),
                ),
                TextSpan(
                  text: ' ou ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: 'Gasolina',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
