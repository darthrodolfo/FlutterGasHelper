import 'package:flutter/material.dart';
import 'package:flutterGasHelper/widgets/logo.widget.dart';
import 'package:flutterGasHelper/widgets/submit.form.dart';
import 'package:flutterGasHelper/widgets/success.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.grey[900];
  var _busy = false;
  var _completed = false;
  var _resultText = '';
  var _gasolineController = new TextEditingController();
  var _alcoholController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 1200,
        ),
        color: _color,
        child: ListView(
          children: <Widget>[
            Logo(),
            _completed
                ? Success(
                    resultado: _resultText,
                    reset: reset,
                  )
                : SubmitForm(
                    alcoholController: _alcoholController,
                    gasolineController: _gasolineController,
                    busy: _busy,
                    submitFunc: calculate,
                  ),
          ],
        ),
      ),
    );
  }

  Future calculate() {
    double alc = double.parse(
            _alcoholController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;
    double gas = double.parse(
            _gasolineController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;
    double res = alc / gas;

    setState(() {
      _color = Colors.grey[800];
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
        const Duration(seconds: 1),
        () => {
              setState(() {
                if (res >= 0.7) {
                  _resultText = 'Gasolina';
                } else {
                  _resultText = 'Álcool';
                }

                _busy = false;
                _completed = true;
              })
            });
  }

  reset() {
    setState(() {
      _color = Colors.grey[900];
      _alcoholController = new TextEditingController();
      _gasolineController = new TextEditingController();
      _completed = false;
      _busy = false;
    });
  }
}
