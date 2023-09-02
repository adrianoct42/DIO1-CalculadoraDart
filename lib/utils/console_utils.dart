import 'dart:convert';
import 'dart:io';

// Classe utilitária para TRATAR INPUTS (sem isso é basicamente um inferno)

class ConsoleUtils {
  // Ler string digitada no console

  static String lerString({String mensagem = ''}) {
    if (mensagem.trim() != '') {
      print(mensagem);
    }
    var linha = stdin.readLineSync(encoding: utf8);
    return linha ?? '';
  }

  // Ler double digitado no console

  static double lerDouble({String mensagem = ''}) {
    do {
      try {
        var linha = lerString(mensagem: mensagem);

        // Tratamento de número, caso contenha vírgula:
        if (linha.contains(',')) {
          linha = linha.replaceAll('.', '');
          linha = linha.replaceAll(',', '.');
        }

        return double.parse(linha);
      } catch (e) {
        print('Número inválido! Tente novamente!');
      }
    } while (true);
  }
}
