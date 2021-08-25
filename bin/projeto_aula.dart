//@dart=2.11
//Criado por Gabriel Silva or GabrielDevs4
// Feito em 25/08/2021

import 'package:projeto_aula/projeto_aula.dart' as projeto_aula;
import 'dart:io';

void main(List<String> arguments) {
  print('Informe sua nota:');
  var entradaNota = stdin.readLineSync();
  var nota = double.parse(entradaNota);

  print('Informe a sua presença:');
  var EntradaPresenca = stdin.readLineSync();
  var presenca = int.parse(EntradaPresenca);

  if (presenca <= 25) {
    print('Reprovado pelo numero de faltas!');
    if (nota >= 6) {
      print('Aprovado!');
    } else {
      print('Você ficou de recuperação!');
      print('Informe a nota da recuperação:');
      var notaRecuperacao = stdin.readLineSync();
      var recuperacao = double.parse(notaRecuperacao);

      if ((recuperacao + nota) / 2 >= 6) {
        print('Aprovado na recuperação!');
      } else {
        print('Reprovado na recuperação!');
      }
    }
  }
}

/**
 -> Solicitar nota
 -> Se é menor que 6
 -> Informar que reprovou
 */