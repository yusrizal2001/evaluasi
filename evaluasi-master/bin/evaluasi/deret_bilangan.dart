import 'dart:io';

void main(List<String> arguments) {
  int k = 0;
  print("Input : ");
  int i = int.tryParse(stdin.readLineSync());

  print("Proses : ");
  int j = 1;

  while (j <= i) {
    print(j);
    if (j < i) {
      print("+");
    }

    k = k + j;
    j = j + 1;
  }

  print(k);
}