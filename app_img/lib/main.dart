import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagem"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Image.asset("imagem/bolsa.jpg"),
      ),
      bottomNavigationBar: const BottomAppBar(
          child: Text("Faça contato pelo whatsapp"), color: Colors.blueGrey),
    );
  }
}
