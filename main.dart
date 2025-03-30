//: Elabore um software que tenha 5 opções em um menu. Onde o
//programa irá inserir num vetor alguns itens de supermercado, como:
//arroz, sabão, feijão, carne e etc.
//Na 1ª opção o programa vai permitir que o usuário cadastre tantos
//produtos quantos forem necessários.
//Na 2ª opção, irá perguntar ao usuário que produto ele quer atualizar e
//qual será o novo produto a entrar naquela posição, e assim atualizar o
//produto.
//Na 3ª opção o algoritmo deverá listar e informar quantos itens estão
//cadastrados no vetor.
//Na 4ª opção, o algoritmo vai perguntar o nome do item que o usuário
//quer deletar e deletar exatamente este item.
//Na 5ª opção, deverá simplesmente encerrar o programa.
import 'dart:io';

void main() {
  List produtos = [];
  bool execucao = true;
  while (execucao == true) {
  print("#==== SOFTWARE DE CADASTRO DE PRODUTOS ====#\n"
      + "1 - Cadastrar produto \n"
      + "2 - Alterar produto \n"
      + "3 - Listar e contar produto \n"
      + "4 - Deletar produto \n"
      + "5 - Sair do programa \n"
      + "Informe a opção desejada"
  );
  int escolha = int.parse(stdin.readLineSync()!);
  String resposta = "sim";
    switch (escolha) {
      case 1:
        while (resposta.toUpperCase() == "S" || resposta.toUpperCase() == "SIM") {
          print("Insira o nome do produto");
          String produto = stdin.readLineSync()!;
          produtos.add(produto);
          print("Produto adicionado");
          print("Gostaria de adicionar mais um produto? Responda com S ou Sim , e Não ou N");
          resposta = stdin.readLineSync()!;
          if (resposta == "Não" || resposta == "N") {
            break;
          }
        }
      case 2 :
        while (resposta.toUpperCase() == "S" || resposta.toUpperCase() == "SIM") {
          print(produtos);
          print(
              "Digite o índice do produto desejado para alteração no campo abaixo;");
          int produtoAlterar = int.parse(stdin.readLineSync()!);
          print(
              "Agora digite o nome do produto desejado para substituir o antigo");
          String nomeProduto = stdin.readLineSync()!;
          produtos[produtoAlterar] = nomeProduto;
          print(
              "Gostaria de alterar mais algum produto? Responda com S ou Sim , e Não ou N");
          resposta = stdin.readLineSync()!;
          if (resposta == "Não" || resposta == "N") {
            break;
          }
        }
      case 3 :
      if (produtos.isEmpty == true){
        print("\n\nNenhum produto adicionado para a lista ainda\n\n");
        break;
      }else {
        print("\n\n" + produtos.toString() + "\n" + "Os produtos cadastrados contabilizam " + (produtos.length).toString() + " produtos." + "\n\n");
        break;
      }
      case 4 :
        while (resposta.toUpperCase() == "S" || resposta.toUpperCase() == "SIM") {
          print(produtos);
          print(
              "Digite o índice do produto desejado para EXCLUSÃO no campo abaixo (0 sendo o primeiro);");
          int produtoExcluir = int.parse(stdin.readLineSync()!);
          produtos.remove(produtos[produtoExcluir]);
          print("Excluído com sucesso");
          print(
              "Gostaria de EXCLUIR mais algum produto? Responda com S ou Sim , e Não ou N");
          resposta = stdin.readLineSync()!;
          if (resposta == "Não" || resposta == "N") {
            break;
          }
        }
      break;
      case 5 :
      execucao = false;
      break;
      default :
        print("\n\nopção inválida, insira por favor uma das opções acima \n\n");
    }
  }
}