import 'package:flutter/material.dart';
import 'package:gastos/Model/Contato.dart';
import 'package:gastos/ContatosWidget.dart';
//import 'package:gastos/NovoContato.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  List<Contato> contatos = [
    Contato(id: "A1", nome: "Thiago", numero: 31928931234),
    Contato(id: "A2", nome: "Julia", numero: 31928931234),
    Contato(id: "A3", nome: "Julia", numero: 31928931234),
    Contato(id: "A4", nome: "Julia", numero: 31928931234),
    Contato(id: "A5", nome: "Julia", numero: 31928931234),
    Contato(id: "A6", nome: "Julia", numero: 31928931234),
    Contato(id: "A7", nome: "Julia", numero: 31928931234),
    Contato(id: "A8", nome: "Julia", numero: 31928931234),
    Contato(id: "A9", nome: "Julia", numero: 31928931234),
    Contato(id: "A10", nome: "Julia", numero: 31928931234),
    Contato(id: "A11", nome: "Julia", numero: 31928931234),
    Contato(id: "A12", nome: "Julia", numero: 31928931234),
    Contato(id: "A13", nome: "Julia", numero: 31928931234),
    Contato(id: "A14", nome: "Julia", numero: 31928931234),
    Contato(id: "A15", nome: "Julia", numero: 31928931234)
  ];

  void addContato(String descricao, double valor) {
    var gasto = Contato(
      id: DateTime.now().toString(),
      nome: descricao,
      numero: valor,
    );
    setState(() {
      contatos.add(gasto);
    });
  }

  void delContato(String id) {
    setState(() {
      contatos.removeWhere((element) => element.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //novo_contato(addContato),
        ContatosWidget(contatos, delContato)
      ],
    );
  }
}
