import 'package:flutter/material.dart';

class TelaContato extends StatelessWidget {
  String valor;
  TelaContato(this.valor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Contato"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Text(valor),
      ),
    );
  }
}
