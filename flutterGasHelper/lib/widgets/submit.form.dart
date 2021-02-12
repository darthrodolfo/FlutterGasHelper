import 'package:flutter/material.dart';
import 'input.widget.dart';
import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  final gasolineController;
  final alcoholController;
  final busy;
  final Function submitFunc;

  SubmitForm({
    @required this.gasolineController,
    @required this.alcoholController,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: GasPriceInput(
              label: 'Gasolina',
              controller: gasolineController,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: GasPriceInput(
              label: 'Álcool',
              controller: alcoholController,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          LoadingButton(
            busy: busy,
            func: submitFunc,
            invert: false,
            text: 'Calcular',
          ),
        ],
      ),
    );
  }
}
