import 'dart:math';

import 'package:flutter/material.dart';

class ResultadoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion Taller 1',
      theme: ThemeData.dark(),
      home: ResultadoPage(),
    );
  }
}

class ResultadoPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ResultadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body: _body(),
      backgroundColor: Colors.black,
    );
  }

  Widget _body() {
    return (Container(
      child: Column(
        children: [],
      ),
    ));
  }
}
