class Planeta {
  int id;
  String nome;
  double tamanho;
  double distancia;
  String apelido;

  Planeta({
    required this.id,
    required this.nome,
    required this.tamanho,
    required this.distancia,
    required this.apelido,
  });

  // Criar um objeto a partir de um Map
  factory Planeta.fromMap(Map<String, dynamic> map) {
    return Planeta(
      id: map['id'],
      nome: map['nome'],
      tamanho: map['tamanho'],
      distancia: map['distancia'],
      apelido: map['apelido'],
    );
  }

  // Converter um objeto para Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'tamanho': tamanho,
      'distancia': distancia,
      'apelido': apelido,
    };
  }
}
