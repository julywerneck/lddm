import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Flutter IMC", home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _tPeso = TextEditingController();
  final _tAltura = TextEditingController();
  var infoText = "Informe seus dados:";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculo de IMC"),
        centerTitle: true,
      ),
      body: body(),
    );
  }

  body() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Peso"),
            controller: _tPeso,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Altura"),
            controller: _tAltura,
          ),
          ElevatedButton(onPressed: calcular, child: const Text("Calcular")),
          Text(
            infoText,
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }

  calcular() {
    setState(() {
      double peso = double.parse(_tPeso.text);
      double altura = double.parse(_tAltura.text) / 100;
      double imc = peso / (altura * altura);
      infoText = "O seu IMC é: " + imc.toStringAsPrecision(4);
      if (imc < 17) {
        infoText = "Muito baixo";
      } else if (imc < 18.5) {
        infoText = "Abaixo do peso";
      } else if (imc < 25) {
        infoText = "Peso normal";
      } else if (imc < 30) {
        infoText = "Acima do peso";
      } else if (imc < 35) {
        infoText = "Obesidade grau 1";
      } else if (imc < 40) {
        infoText = "Obesidade grau 2";
      } else {
        infoText = "Obesidade grau 3";
      }
    });
  }
}
