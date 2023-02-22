import 'dart:io';

void main() {
  String escolhaJogador1;
  int numeroJogador1, numeroJogador2;

  // jogador 1 escolhe entre par ou ímpar
  do {
    print("Jogador 1: Escolha Par (P) ou Ímpar (I)");
    escolhaJogador1 = stdin.readLineSync()!;
  } while (escolhaJogador1 != "P" && escolhaJogador1 != "I");

  // jogadores escolhem números
  print("Jogador 1: Escolha um número");
  numeroJogador1 = int.parse(stdin.readLineSync()!);
  print("Jogador 2: Escolha um número");
  numeroJogador2 = int.parse(stdin.readLineSync()!);

  // verifica quem ganhou
  if ((numeroJogador1 + numeroJogador2) % 2 == 0) { // soma é par
    if (escolhaJogador1 == "P") {
      print("Jogador 1 venceu!");
    } else {
      print("Jogador 2 venceu!");
    }
  } else { // soma é ímpar
    if (escolhaJogador1 == "I") {
      print("Jogador 1 venceu!");
    } else {
      print("Jogador 2 venceu!");
    }
  }
}
