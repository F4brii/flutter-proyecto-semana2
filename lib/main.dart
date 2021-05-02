import 'package:flutter/material.dart';
import 'Pages/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion Taller 1',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}
