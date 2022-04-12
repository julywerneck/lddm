import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("texto1"), Text("texto2"), Text("texto3")],
    );
  }
}
