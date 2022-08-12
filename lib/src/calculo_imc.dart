import 'dart:io';

calculoImc() {
  calculoDeImc();
}

calculoDeImc() {
  print("==========Digite seu peso==========");
  var textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso!);

  print("==========Digite sua altura==========");
  var textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura!);

  double imc = calcImcExp(peso, altura);

  imprimirResultado(imc);
}

double calcImcExp(int peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(double imc) {
  print("==================IMC==================");

  if (imc < 18.5) {
    print("Abaixo do Peso.");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Peso normal.");
  } else if (imc > 25 && imc < 29.9) {
    print("Sobrepeso.");
  } else if (imc > 30 && imc < 34.9) {
    print("Obesidade Grau 1.");
  } else if (imc > 35 && imc < 39.9) {
    print("Obesidade Grau 2.");
  } else {
    print("Obesidade Grau 3.");
  }
}
