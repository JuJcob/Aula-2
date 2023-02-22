//Crie um programa em Dart que seja capaz de ler quatro números (N1, N2, N3, N4), cada um deles com uma casa decimal, correspondente às quatro notas de um aluno. 
import 'dart:io';

void main(){
  print('Digite as quatro notas do aluno (separadas por espaço):');
  String notasStr = stdin.readLineSync()!;
  List<String> notasArr = notasStr.split(' ');

  double n1 = double.parse(notasArr[0]);
  double n2 = double.parse(notasArr[1]);
  double n3 = double.parse(notasArr[2]);
  double n4 = double.parse(notasArr[3]);

//Calcule a média e mostre esta média acompanhada pela mensagem "Média: ". 
  double media = (n1 + n2 + n3 + n4) / 4;
  print('Média: ${media.toStringAsFixed(1)}');

//Se esta média for maior ou igual a 7.0, imprima a mensagem "Aluno aprovado". 
  if (media >= 7.0) {
    print('Aluno aprovado');
//Se a média calculada for inferior a 5.0, imprima a mensagem "Aluno reprovado". 
  } else if (media < 5.0) {
    print('Aluno reprovado');
  } else {
//Se a média calculada for um valor entre 5.0 e 6.9, inclusive estas, o programa deve imprimir a mensagem "Aluno em exame". 
    print('Aluno em exame');
//No caso do aluno estar em exame, leia um valor correspondente à nota do exame obtida pelo aluno. 
//Imprima então a mensagem "Nota do exame: " acompanhada pela nota digitada. 
    print('Digite a nota do exame:');
    double notaExame = double.parse(stdin.readLineSync()!);

//Recalcule a média (some a pontuação do exame com a média anteriormente calculada e divida por 2). e imprima a mensagem "Aluno aprovado", 
    media = (media + notaExame) / 2;
    print('Nota do exame: ${notaExame.toStringAsFixed(1)}');

//caso a média final seja 5.0 ou mais ou "Aluno reprovado",
    if (media >= 5.0) {
      print('Aluno aprovado');
    } else {
      print('Aluno reprovado');
    }
  }
//caso a média tenha ficado 4.9 ou menos. Para estes dois casos (aprovado ou reprovado após ter pego exame) apresente na última linha uma mensagem "Média final: " seguido da média final para esse aluno.

  print('Média final: ${media.toStringAsFixed(1)}');
}



