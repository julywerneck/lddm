import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        margin: const EdgeInsets.only(left: 30),
        child: Column(
          children: [
            Row(
              children: [
                formatarTexto("T 1"),
                formatarTexto("T 2"),
                formatarTexto("T 3"),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Clique ai"))
          ],
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }

  formatarTexto(String valor) {
    return Text(valor,
        style: const TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 245, 3, 205),
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            letterSpacing: 20,
            wordSpacing: 20,
            decoration: TextDecoration.none));
  }
}
