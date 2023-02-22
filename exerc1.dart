import 'dart:io';
//Crie um programa em Dart que leia 4 valores inteiros A, B, C e D.
void main() {
  print('Digite quatro valores inteiros:');

  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);
  int d = int.parse(stdin.readLineSync()!);

 //e B for maior do que C e se D for maior do que A, e a soma de C com D for maior que a soma de A e B e se C e D, ambos, forem positivos.
  if ( b > c && d > a && c + d > a + b && c > 0 && d > 0 ) {
 //e se a variável A for par escrever a mensagem "Valores aceitos", senão escrever "Valores não aceitos".
  if(a % 2 == 0){
    print('Valores Aceitos');
    } else {
      print('Valores não Aceitos');
    }
  } else {
    print('Valores não Aceitos');
  } 

}
