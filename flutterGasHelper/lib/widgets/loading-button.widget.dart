import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            height: 50,
            child: SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 4,
                valueColor: new AlwaysStoppedAnimation<Color>(
                  Colors.greenAccent[400],
                ),
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: func,
              child: Text(
                text,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          );
  }
}
