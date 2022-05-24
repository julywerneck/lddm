import 'package:flutter/material.dart';
import 'package:gastos/Model/Transacao.dart';
import 'package:gastos/NovaTransacao.dart';
import 'package:gastos/TransacoesWidget.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  List<Transacao> transacoes = [
    Transacao(
        id: "A1", titulo: "Café", quantidade: 4.095, data: DateTime.now()),
    Transacao(id: "A2", titulo: "Leite", quantidade: 4.2, data: DateTime.now())
  ];

  void addGasto(String descricao, double valor) {
    var gasto = Transacao(
        id: DateTime.now().toString(),
        titulo: descricao,
        quantidade: valor,
        data: DateTime.now());
    setState(() {
      transacoes.add(gasto);
    });
  }

  void delGastos(String id) {
    setState(() {
      transacoes.removeWhere((element) => element.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NovaTransacao(addGasto),
        TransacoesWidget(transacoes, delGastos)
      ],
    );
  }
}
