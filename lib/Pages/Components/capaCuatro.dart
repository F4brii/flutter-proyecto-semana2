import 'package:flutter/material.dart';
import 'package:imc/Pages/resultado.dart';

class CapaCuatro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultadoApp()),
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
    );
  }
}

/*  */