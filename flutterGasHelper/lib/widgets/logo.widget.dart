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
            height: 80,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
              text: 'Alcool',
              style: TextStyle(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: ' ou ',
                ),
                TextSpan(
                  text: 'Gasolina',
                ),
              ]),
        )
      ],
    );
  }
}
