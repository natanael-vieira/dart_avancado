/*import 'package:dart_avancado/dart_avancado.dart' as dart_avancado;
// Com essa estrutura de projeto criada pelo próprio Dart, eu tenho a opção de trabalhar com vários arquivos .dart separados para organizar meu código. No caso eu uso o import e seleciono o arquivo que preciso para usar no meu código como sem estivesse importando do servidor do Dart como usei antes;

void main(List<String> arguments) {
  // Esta lista de argumentos que foi incluída ao criar a estrutura do Dart é uma lista que eu vou adicionando ao abrir o terminal e escrever algo após o comando de executar o programa que foi criado, por exemplo: dart dart_avancado.dart Natanael Palhoca "Santa Catarina"
  //print('Hello world: ${dart_avancado.calculate()}!');
  //print(arguments);

  if (arguments[0] == "hackear") {
    print("hackeamento concluido");
  } else if (arguments[0] == "imprimir") {
    print("impressao concluida");
  } // Dessa maneira aqui posso usar o arguments para, dentro de uma estrutura de decisão, retornar o que eu quero naquele momento, como usar um determinado arquivo para retornar um print específico como foi determinado acima;
}
*/

import 'package:dart_avancado/src/calculo_idade.dart';
import 'package:dart_avancado/src/calculo_imc.dart';
import 'package:dart_avancado/src/carrinho_compras.dart';


void main(List<String> args) {
  if (args[0] == "calculo-idade") {
    calculoIdade();
  } if (args[0] == "carrinho-compras") {
    carrinhoCompras();
  } if (args[0] == "calculo-imc") {
    calculoImc();
  } else {
    print("===== ESSE PROGRAMA NÃO EXISTE =====");
  }
}
