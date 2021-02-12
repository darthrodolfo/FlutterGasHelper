import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class GasPriceInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final MaskTextInputFormatter maskedTextFormmater = MaskTextInputFormatter(
    mask: '#.###',
    filter: {"#": RegExp(r'[0-9]')},
  );

  GasPriceInput({
    @required this.label,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Ubuntu',
              //fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
            inputFormatters: [this.maskedTextFormmater],
            controller: this.controller,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: 'DS-DIGI',
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              hintText: '0.000',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              enabledBorder: UnderlineInputBorder(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.greenAccent[700],
                  width: 2,
                ),
              ),
              prefix: Text(
                'R\$  ',
                style: TextStyle(
                    color: Colors.greenAccent[700],
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }
}
