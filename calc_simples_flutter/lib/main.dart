import 'package:flutter/material.dart';
import 'package:calc_simples/Calc.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora Simples",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Calculadora(),
      //DEBUG
      debugShowCheckedModeBanner: false,
    );
  }
}
