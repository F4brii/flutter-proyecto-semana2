import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imc/Pages/resultado.dart';

import 'Components/capaUno.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _value = 100;
  double peso = 0;
  double estatura = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return (Container(
      child: Column(
        children: [
          Container(
            child: CapaUno(),
          ),
          Container(
            child: Container(
              child: Expanded(
                  child: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text("Estatura",
                          style: Theme.of(context).textTheme.button),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            "${_value.round().toString()}",
                            style: Theme.of(context).textTheme.headline1,
                            textScaleFactor: 0.8,
                          ),
                        ),
                        Text(
                          "Cm.",
                          textScaleFactor: 2,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white70,
                        trackShape: RectangularSliderTrackShape(),
                        trackHeight: 4.0,
                        thumbColor: Colors.pink,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayColor: Colors.white,
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 10.0),
                      ),
                      child: Slider(
                        value: _value,
                        min: 0,
                        max: 200,
                        divisions: 200,
                        label: _value.round().toString(),
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
              )),
            ),
          ),
          Container(
            child: Container(
              child: Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(
                            "Peso",
                            style: Theme.of(context).textTheme.bodyText1,
                            textScaleFactor: 1.5,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            peso.round().toString(),
                            style: Theme.of(context).textTheme.headline1,
                            textScaleFactor: 0.8,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: FloatingActionButton(
                                onPressed: () {
                                  if (peso > 0) {
                                    setState(() {
                                      peso--;
                                    });
                                  }
                                },
                                child: const Icon(Icons.remove),
                                backgroundColor: Colors.pink,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  peso++;
                                });
                              },
                              child: const Icon(Icons.add),
                              backgroundColor: Colors.pink,
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(
                            "Edad",
                            style: Theme.of(context).textTheme.bodyText1,
                            textScaleFactor: 1.5,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            estatura.round().toString(),
                            style: Theme.of(context).textTheme.headline1,
                            textScaleFactor: 0.8,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: FloatingActionButton(
                                onPressed: () {
                                  if (estatura > 0) {
                                    setState(() {
                                      estatura--;
                                    });
                                  }
                                },
                                child: const Icon(Icons.remove),
                                backgroundColor: Colors.pink,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  estatura++;
                                });
                              },
                              child: const Icon(Icons.add),
                              backgroundColor: Colors.pink,
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              )),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                double esta = this._value / 100;
                double resultado = (this.peso / pow(esta, 2));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            resultado: resultado.toString(),
                          )),
                );
              },
              child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 10.0),
                  padding: const EdgeInsets.all(5.0),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Text("Calcular")),
            ),
          )
        ],
      ),
    ));
  }
}
