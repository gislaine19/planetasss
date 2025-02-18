import 'package:flutter/material.dart';
import '../modelos/planeta.dart';

class TelaPlaneta extends StatelessWidget {
  final List<Planeta> planetas = [
    Planeta(nome: "Mercúrio", tamanho: 4879, distancia: 57.9, apelido: "Planeta de fogo"),
    Planeta(nome: "Terra", tamanho: 12742, distancia: 149.6, apelido: "Planeta Azul"),
    Planeta(nome: "Vênus", tamanho: 12104, distancia: 108.2, apelido: "Estrela D’Alva"),
    Planeta(nome: "Netuno", tamanho: 49244, distancia: 4495.1, apelido: "Gigante de gelo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App - Planetas")),
      body: ListView.builder(
        itemCount: planetas.length,
        itemBuilder: (context, index) {
          final planeta = planetas[index];
          return ListTile(
            title: Text(planeta.nome, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(planeta.apelido),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                IconButton(icon: Icon(Icons.delete), onPressed: () {}),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}