import 'package:flutter/material.dart';

class novo_contato extends StatelessWidget {
  var nomeController = TextEditingController();
  var numeroController = TextEditingController();
  Function addGasto;
  novo_contato(this.addGasto);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: double.infinity,
      child: Card(
          elevation: 5,
          child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                      decoration: InputDecoration(labelText: "Nome"),
                      controller: nomeController),
                  TextField(
                    decoration: InputDecoration(labelText: "Telefone"),
                    keyboardType: TextInputType.number,
                    controller: numeroController,
                  ),
                  Padding(
                    child: ElevatedButton(
                        onPressed: () {
                          addGasto(nomeController.text,
                              double.parse(numeroController.text));
                        },
                        child: Text("Incluir")),
                    padding: EdgeInsets.only(top: 15),
                  )
                ],
              ))),
    );
  }
}
