import 'package:flutter/material.dart';
import 'tela2.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela Principal"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Tela2("Teste de param")));
                },
                child: Text("Tela2"))
          ]),
        ));
  }
}
