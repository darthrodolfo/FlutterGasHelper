import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  final String resultado;
  final Function reset;

  Success({
    @required this.resultado,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Compensa utilizar:',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 30,
              fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.resultado,
            style: TextStyle(
              color: Colors.green[700],
              fontSize: 35,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          LoadingButton(
            busy: false,
            func: reset,
            invert: true,
            text: 'Calcular novamente',
          ),
        ],
      ),
    );
  }
}
