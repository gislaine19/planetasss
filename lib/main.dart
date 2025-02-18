import 'package:flutter/material.dart';
import 'telas/tela_planeta.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Planetas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TelaPlaneta(),
    );
  }
}

    
