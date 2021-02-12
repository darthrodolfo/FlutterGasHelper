import 'package:flutter/material.dart';

import 'pages/home.page.dart';

void main() {
  runApp(MyApp());
}

// class AppTheme {
//   AppTheme._();

//   static final ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primarySwatch: Colors.green,
//     accentColor: Colors.purple[300],
//     scaffoldBackgroundColor: Colors.grey[100],
//     colorScheme: ColorScheme.light(
//       primary: Colors.green,
//       secondary: Colors.green[100],
//     ),
//   );

//   static final ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primarySwatch: Colors.green,
//     accentColor: Colors.purple[300],
//     colorScheme: ColorScheme.dark(
//       primary: Colors.green[800],
//       secondary: Colors.green[600],
//     ),
//   );
// }

// TODO:
// [] Calculadora Simples
// [] Registrar abastecimento com (local, rede de posto onde foi abastecido, quantos litros, preço e etc.)
// [] Tela de histórico
// [] Tela de gráfico (x dias, semana, mês)
// [] Calculo de consumo por KM/l (Adicionar quilometragem inicial e quantidade de combustivel (litros), km final + combustivel)
// [] Adicionar histórico de "viagens"

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterGasHelper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   HomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.blue[100],
//                 Colors.white70,
//               ],
//             ),
//           ),
//         ),
//         title: Text(
//           this.title,
//           style: TextStyle(
//             color: Colors.blue,
//           ),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.white,
//               Colors.blue[100],
//             ],
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Icon(
//                 Icons.warning_amber_rounded,
//                 size: 120.0,
//                 color: Colors.red[900],
//               ),
//               Text(
//                 'Under Construction',
//                 style: TextStyle(
//                   fontFamily: 'Roboto',
//                   color: Colors.red[700],
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: null,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
