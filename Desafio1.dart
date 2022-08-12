import 'dart:io';

main() {
  int x = 3;
  int z = 5;
  int num = 0;
  int somax = 0;
  int somaz = 0;
  int total;

  print('\n-------- Soma de Divisores --------\n');

  //Intrução para receber numero do usuário
  print('Digite um numero inteiro positivo:');
  num = int.parse(stdin.readLineSync()!);

  while (num < 0) {
    print('\nNúmero digitado invalido.');
    print('Por favor informe um número positivo:');
    num = int.parse(stdin.readLineSync()!);
  }
  //regra para receber numeros divisiveis de 3
  for (int i = 1; i < num; i++) {
    if (i % x == 0) {
      somax += i;
    }
  }

  //regra para receber numeros divisiveis de 5
  for (int i = 1; i < num; i++) {
    if (i % z == 0) {
      somaz += i;
    }
  }
  //expressão para realizar a soma dos divisiveis
  total = somax + somaz;

  print("\nA soma dos multiplos de 3 e 5 menores que $num, é: $total\n");
}