import 'package:flutter/material.dart';
import 'package:gastos/TelaContato.dart';
import 'Model/Contato.dart';
import 'package:intl/intl.dart';

class ContatosWidget extends StatelessWidget {
  List<Contato> contatos;
  Function delContato;
  ContatosWidget(this.contatos, this.delContato);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 800,
        child: SingleChildScrollView(
            child: Column(
                children: contatos.map((operacao) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TelaContato(operacao.nome.toString())));
              },
              child: Card(
                margin: EdgeInsets.zero,
                color: Color.fromRGBO(210, 216, 220, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/user.jpeg"),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.zero,
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          operacao.nome.toString(),
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    Container(
                      margin: EdgeInsets.zero,
                      child: Text(operacao.numero!.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              // fontFamily: ,
                              fontSize: 16,
                              color: Colors.black87)),
                    ),
                    IconButton(
                        alignment: Alignment.bottomCenter,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.circle_notifications,
                          color: Color.fromRGBO(37, 211, 102, 1),
                        )),
                  ],
                ),
              ));
        }).toList())));
  }
}
// 0,128,105
// 0,168,132 
// 134,150,160