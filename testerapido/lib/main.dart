import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("App de Receitas")), body: body()),
    );
  }
}

var resposta = 0;
calcular() {
  resposta = 80 * 2;
  print(resposta);
}

body() {
  return Column(
    children: [
      Text("Receitas"),
      ElevatedButton(onPressed: calcular, child: Text("Adicionar")),
      Text('Resposta: ' + resposta.toString()),
    ],
  );
}
