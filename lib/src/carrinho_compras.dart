import 'dart:io';

List<String> products = [];

carrinhoCompras() {
  /*List<String> products = [];*/ // Aqui a variável List está local, dentro da main, mas posso colocar ela como global, apenas retirando e colocando ela fora do escopo da main, nesse caso não é necessário ficar declarando nas funções de fora da main o product para acessar ele
  bool condiction = true;
  while (condiction) {
    print("===== Adicione um Produto =====");
    var text = stdin.readLineSync();
    if (text == "sair") {
      print("===== Lista Pronta =====");
      condiction = false;
    } else if (text == "imprimir") {
      imprimir();
      /*print(products);
        print("\n");*/
      // uma maneira diferente de imprimir é colocando um for e usando as condições do for para mostrar os itens em lista crescente;
    } else if (text == "remover") {
      remover();
    } else {
      products.add(text!);
      print("\x1B[2J\x1B[0;0H"); //Comando para fazer a limpeza da tela;
    }
  }
}

imprimir() {
  for (var i = 1; i < products.length; i++) {
    print("Item $i - ${products[i]}");
  }
}

remover() {
  print("===== Qual Item Deseja Remover? =====");
  imprimir();
  var input = stdin.readLineSync();
  var item = int.parse(input!);
  products.removeAt(item);
  print("===== Item Removido =====");
}
