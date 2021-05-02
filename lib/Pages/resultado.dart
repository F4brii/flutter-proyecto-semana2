import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  String resultado;
  ResultScreen({required this.resultado}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Resultado",
        home: MyStatelessWidget(
          resultado: this.resultado,
        ),
        theme: ThemeData.dark());
  }
}

class MyStatelessWidget extends StatelessWidget {
  String resultado;
  MyStatelessWidget({required this.resultado}) : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0, left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Resultado",
                style: Theme.of(context).textTheme.headline1,
                textScaleFactor: 0.4,
              ),
            ),
            height: 100,
          ),
          Container(
            child: Container(
              child: Expanded(
                  child: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Text(
                        TipoPeso(resultado),
                        style: Theme.of(context).textTheme.headline2,
                        textScaleFactor: 0.4,
                      ),
                    ),
                    Container(
                      child: Text(
                        resultado,
                        style: Theme.of(context).textTheme.headline2,
                        textScaleFactor: 1.5,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Mensaje!",
                        style: Theme.of(context).textTheme.headline1,
                        textScaleFactor: 0.2,
                      ),
                    )
                  ],
                ),
              )),
            ),
          ),
          Container(
            color: Colors.red,
            height: 50,
          ),
        ],
      ),
    );
  }

  String TipoPeso(String imc) {
    double peso = double.parse(imc);
    if (peso < 18.5)
      return "BAJO PESO";
    else if (peso >= 18.5 && peso <= 24.9)
      return "PESO NORMAL";
    else if (peso >= 25 && peso <= 29.9)
      return "SOBREPESO";
    else if (peso >= 30 && peso <= 34.5)
      return "OBESIDAD GRADO I";
    else if (peso >= 35 && peso <= 39.9)
      return "OBESIDAD GRADO II";
    else if (peso > 40)
      return "OBESIDAD GRADO III";
    else
      return "";
  }
}

/* class ResultPage extends State<ResultScreen> {
  String Data;
  ResultPage({required this.Data}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      child: Expanded(
        child: Column(
          children: [],
        ),
      ),
    );
  }

  
} */
