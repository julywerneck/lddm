import 'package:flutter/material.dart';

class NovaTransacao extends StatelessWidget {
  var tituloController = TextEditingController();
  var precoController = TextEditingController();
  Function addGasto;
  NovaTransacao(this.addGasto);
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
                      decoration: InputDecoration(labelText: "Titulo"),
                      controller: tituloController),
                  TextField(
                    decoration: InputDecoration(labelText: "Preço"),
                    keyboardType: TextInputType.number,
                    controller: precoController,
                  ),
                  Padding(
                    child: ElevatedButton(
                        onPressed: () {
                          addGasto(tituloController.text,
                              double.parse(precoController.text));
                        },
                        child: Text("Incluir")),
                    padding: EdgeInsets.only(top: 15),
                  )
                ],
              ))),
    );
  }
}
