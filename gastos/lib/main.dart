import 'package:flutter/material.dart';
import 'Model/Transacao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Transacao> transacoes = [
    Transacao(id: "A1", titulo: "Café", quantidade: 4.5, data: DateTime.now()),
    Transacao(id: "A2", titulo: "Leite", quantidade: 4.2, data: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gastos")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Card(child: Text("Conteudo")), Card(child: Text("Gastos"))],
      )),
    );
  }
}
