import 'package:flutter/material.dart';
import 'package:fruit_market/models/Produto.dart';

class Favorito extends ChangeNotifier {
  List<Produto> favoritos = [];

  Favorito() {
    favoritos = [
      Produto(
        id: 1,
        titulo: "Coca-Cola",
        imagem: Image.asset("assets/images/coca_cola.png"),
        cor: Color.fromARGB(255, 85, 85, 85),
        preco: 15.99,
        tipo: "350 ML",
      ),
      Produto(
        id: 2,
        titulo: "Pepsi Black",
        imagem: Image.asset("assets/images/pepsi_black.png"),
        cor: Color.fromARGB(255, 0, 0, 0),
        preco: 13.99,
        tipo: "350 ML",
      ),
      Produto(
        id: 3,
        titulo: "Fanta Laranja",
        imagem: Image.asset("assets/images/fanta_laranja.png"),
        cor: Color.fromARGB(255, 255, 217, 0),
        preco: 18.50,
        tipo: "650 ML",
      ),
      Produto(
        id: 4,
        titulo: "Suco Laranja",
        imagem: Image.asset("assets/images/suco_laranja.png"),
        cor: Color.fromARGB(255, 200, 148, 6),
        preco: 5.85,
        tipo: "180 ML",
      ),
      Produto(
        id: 5,
        titulo: "Suco Natural Uva",
        imagem: Image.asset("assets/images/suco_uva.png"),
        cor: Color.fromARGB(255, 91, 4, 145),
        preco: 20.50,
        tipo: "1 L",
      ),
    ];
  }

  void adicionaFavorito(Produto produto) {
    favoritos.add(produto);
    notifyListeners();
  }

  void removeFavorito(Produto produtoRemover) {
    favoritos.removeWhere((produto) => produto.id == produtoRemover.id);
    notifyListeners();
  }

  bool pesquisaProduto(int id) {
    for (int i = 0; i < favoritos.length; i++) {
      if (favoritos[i].id == id) {
        return true;
      }
    }
    return false;
  }
}
