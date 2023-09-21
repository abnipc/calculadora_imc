class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

//setando os métodos get e set da classe pessoa
  void setNome(String nome) {
    _nome = nome.toUpperCase();
  }

  String getNome() {
    return _nome.toUpperCase();
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

//calcula o imc quando a classe é instanciada e o metodo imc chamado
  double getImc() {
    return _peso / (_altura * _altura);
  }
}
