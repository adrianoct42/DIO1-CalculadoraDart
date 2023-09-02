import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'package:imccalc/classes/pessoa.dart';
import 'package:imccalc/imccalc.dart' as imccalc;
import 'package:imccalc/utils/console_utils.dart';

void main(List<String> arguments) {
  print("Good evening magistrate. We're now developing a Calculator with Dart");
  print("Bem vindo a calculadora de IMC. Vamos pegar alguns de seus dados.");
  print("Digite seu nome: ");
  var nome = ConsoleUtils.lerString();
  print("Digite seu peso: ");
  var peso = ConsoleUtils.lerDouble();
  print("Digite sua altura: ");
  var altura = ConsoleUtils.lerDouble();

  var pessoa = Pessoa(nome, peso, altura);
  var imc = pessoa.getPeso() / (pow(pessoa.getAltura(), 2));

  print("Resultado do IMC:\n");
  if (imc < 16) {
    print("$imc -- MAGREZA GRAVE");
  } else if (imc >= 16 && imc < 17) {
    print("$imc -- MAGREZA MODERADA");
  } else if (imc >= 17 && imc < 18.5) {
    print("$imc -- MAGREZA LEVE");
  } else if (imc >= 18.5 && imc < 25) {
    print("$imc -- SAUDÁVEL");
  } else if (imc >= 25 && imc < 30) {
    print("$imc -- SOBREPESO");
  } else if (imc >= 30 && imc < 35) {
    print("$imc -- OBESIDADE GRAU I");
  } else if (imc >= 35 && imc < 40) {
    print("$imc -- OBESIDADE GRAU II");
  } else if (imc >= 40) {
    print("$imc -- OBESIDADE GRAU III");
  }
}
