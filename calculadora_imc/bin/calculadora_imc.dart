import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/classes/Pessoa.dart';

void main(List<String> arguments) {
  print("Bem vindo a calculadora de IMC");

  //instancia classe Pessoa
  var p1 = new Pessoa();

  //########################entra nome do usuario.########################
  print("Insira o nome da Pessoa");
  var nome = stdin.readLineSync(encoding: utf8) ?? "";
  //seta nome no objeto p1
  p1.setNome(nome);

  //########################entra peso do usuario.########################
  print("Insira seu peso:");
  var temp = stdin.readLineSync(encoding: utf8) ?? "";
  //converte a entrada string temp para double, tratando erro (encerra codigo)
  try {
    var peso = double.parse(temp);
    //seta peso do objeto p1
    p1.setPeso(peso);
  } catch (e) {
    print("$temp invalido, deve ser um numero.");
    exit(0);
  }

  //########################entra altura.#################################
  print("Insira a altura");
  temp = stdin.readLineSync(encoding: utf8) ?? "";
  try {
    var altura = double.parse(temp);
    p1.setAltura(altura);
  } catch (e) {
    print("$temp invalido");
    exit(0);
  }

  //recebe o imc de p1
  var imc = p1.getImc();
  //coloca o nome de p1 em uma variável
  var nomep1 = p1.getNome();

  //printa resultado
  print("O IMC de $nomep1 é $imc");
}
