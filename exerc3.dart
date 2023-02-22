import 'dart:io';

void main() {

  double? a, b, c; // declara as 3 variaveis do mesmo tipo numa linha so

  print("Digite o valor de A: ");
  a = double.parse(stdin.readLineSync()!);

  print("Digite o valor de B: ");
  b = double.parse(stdin.readLineSync()!);

  print("Digite o valor de C: ");
  c = double.parse(stdin.readLineSync()!);

  if (a >= b + c) {
    print("NÃO FORMA TRIANGULO");
  } else if (a * a == b * b + c * c || b * b == a * a + c * c || c * c == a * a + b * b) {
    print("TRIÂNGULO RETÂNGULO");
  } else if (a * a > b * b + c * c || b * b > a * a + c * c || c * c > a * a + b * b) {
    print("TRIÂNGULO OBTUSÂNGULO");
  } else if (a * a < b * b + c * c && b * b < a * a + c * c && c * c < a * a + b * b) {
    print("TRIÂNGULO ACUTÂNGULO");
  }

  if (a == b && b == c) {
    print("TRIÂNGULO EQUILÁTERO");
  } else if (a == b || b == c || a == c) {
    print("TRIÂNGULO ISÓSCELES");
  }

}

