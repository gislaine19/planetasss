import '../modelos/planeta.dart';

class ControlePlaneta {
  List<Planeta> _planetas = [
    Planeta(id: 1, nome: "Mercúrio", tamanho: 4879, distancia: 57, apelido: "O planeta de fogo"),
    Planeta(id: 2, nome: "Terra", tamanho: 12742, distancia: 149.6, apelido: "O planeta Azul"),
    Planeta(id: 3, nome: "Vênus", tamanho: 12104, distancia: 108.2, apelido: "Estrela D’alva"),
    Planeta(id: 4, nome: "Netuno", tamanho: 49244, distancia: 4495, apelido: "Gigante de gelo"),
  ];

  List<Planeta> get planetas => _planetas;

  void adicionarPlaneta(Planeta planeta) {
    _planetas.add(planeta);
  }

  void editarPlaneta(int id, Planeta planetaAtualizado) {
    final index = _planetas.indexWhere((p) => p.id == id);
    if (index != -1) {
      _planetas[index] = planetaAtualizado;
    }
  }

  void removerPlaneta(int id) {
    _planetas.removeWhere((p) => p.id == id);
  }
}
