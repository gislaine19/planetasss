import 'package:flutter/material.dart';
import '../modelos/planeta.dart';

class TelaPlaneta extends StatelessWidget {
  final List<Planeta> planetas = [
    Planeta(id: 1, nome: "Mercúrio", tamanho: 4879, distancia: 57, apelido: "O planeta de fogo"),
    Planeta(id: 2, nome: "Terra", tamanho: 12742, distancia: 149.6, apelido: "O planeta Azul"),
    Planeta(id: 3, nome: "Vênus", tamanho: 12104, distancia: 108.2, apelido: "Estrela D’alva"),
    Planeta(id: 4, nome: "Netuno", tamanho: 49244, distancia: 4495, apelido: "Gigante de gelo"),
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
        child: Icon(Icons.add),
        onPressed: () {
          // Ação de adicionar um novo planeta
        },
      ),
    );
  }
}
