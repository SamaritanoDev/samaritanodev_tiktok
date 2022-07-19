import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ejemplos',
      home: Boton(),
    );
  }
}

class Boton extends StatelessWidget {
  const Boton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.purple[400],  
        padding: const EdgeInsets.all(10),
          child: const Text("Sou um boton",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black
          ),
          ),
        ),
    );
  }
}
