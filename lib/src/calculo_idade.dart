import 'dart:io';

calculoIdade() {

  print("========== Digite uma idade: ==========");
  var input = stdin.readLineSync(); 
  var idade = int.parse(input!);

  if (idade <= 0) {
    print("Ele(a) é um bebê!");
  } else if (idade <= 11) {
    print("Ele(a) é uma criança!");
  } else if (idade <= 17) {
    print("Ele(a) é um adolescente!");
  } else if (idade < 60) {
    print("Ele(a) é um adulto!");
  } else if (idade >= 60) {
    print("Ele(a) é um idoso!");
  } else {
    print("Falecido");
  }
}
