import 'package:flutter/material.dart';
import 'Model/Transacao.dart';
import 'package:intl/intl.dart';

class TransacoesWidget extends StatelessWidget {
  List<Transacao> transacoes;
  TransacoesWidget(this.transacoes);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: SingleChildScrollView(
            child: Column(
                children: transacoes.map((operacao) {
          return Card(
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.purple)),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                        "R\$ ${operacao.quantidade!.toStringAsFixed(2)}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple))),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      operacao.titulo.toString(),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat("yyyy-MM-dd HH:mm").format(operacao.data!),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ))
              ],
            ),
          );
        }).toList())));
  }
}
