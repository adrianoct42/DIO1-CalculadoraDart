class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  getNome() {
    return _nome;
  }

  getPeso() {
    return _peso;
  }

  getAltura() {
    return _altura;
  }

  Pessoa(String? nome, double? peso, double? altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }
}
