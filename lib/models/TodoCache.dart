import 'package:flutter/material.dart';
import 'package:fruit_market/models/Produto.dart';

class TodoCache extends ChangeNotifier {
  bool pesquisa = false;
  List<Produto> pesquisas = [];

  final List<Produto> favoritos = [
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

  final List<Produto> produtos = [
    Produto(
      id: 6,
      titulo: "Maçã",
      imagem: Image.asset("assets/images/maca.png"),
      cor: const Color.fromARGB(255, 197, 16, 16),
      tipo: "1 Kg",
      preco: 10.50,
    ),
    Produto(
      id: 7,
      titulo: "Banana da Terra",
      imagem: Image.asset("assets/images/banana.png"),
      cor: const Color.fromARGB(255, 238, 184, 19),
      tipo: "1 Kg",
      preco: 8.50,
    ),
    Produto(
      id: 8,
      titulo: "Pera",
      imagem: Image.asset("assets/images/pera.png"),
      cor: const Color.fromARGB(255, 231, 192, 75),
      tipo: "1 Kg",
      preco: 5.80,
    ),
    Produto(
      id: 9,
      titulo: "Abacaxi",
      imagem: Image.asset("assets/images/abacaxi.png"),
      cor: const Color.fromARGB(255, 145, 121, 49),
      tipo: "1 Kg",
      preco: 13.20,
    ),
    Produto(
      id: 10,
      titulo: "Kiwi",
      imagem: Image.asset("assets/images/kiwi.png"),
      cor: const Color.fromARGB(255, 90, 71, 14),
      tipo: "1 Kg",
      preco: 5.99,
    ),
    Produto(
      id: 11,
      titulo: "Mamão",
      imagem: Image.asset("assets/images/mamao.png"),
      cor: const Color.fromARGB(255, 242, 192, 43),
      tipo: "1 Kg",
      preco: 13.50,
    ),
    Produto(
      id: 12,
      titulo: "Abacate",
      imagem: Image.asset("assets/images/abacate.png"),
      cor: const Color.fromARGB(255, 11, 132, 2),
      tipo: "1 Kg",
      preco: 8.90,
    ),
    Produto(
      id: 13,
      titulo: "Uva Roxa",
      imagem: Image.asset("assets/images/uva_roxa.png"),
      cor: const Color.fromARGB(255, 155, 3, 197),
      tipo: "1 Kg",
      preco: 13.25,
    ),
    Produto(
      id: 14,
      titulo: "Uva Verde",
      imagem: Image.asset("assets/images/uva_verde.png"),
      cor: const Color.fromARGB(255, 48, 204, 8),
      tipo: "1 Kg",
      preco: 14.50,
    )
  ];

  final List<Produto> bebidas = [
    Produto(
      id: 15,
      titulo: "Coca-Cola",
      imagem: Image.asset("assets/images/coca_cola.png"),
      cor: const Color.fromARGB(255, 197, 16, 16),
      tipo: "350 ml",
      preco: 10.50,
    ),
    Produto(
      id: 16,
      titulo: "Pepsi Black",
      imagem: Image.asset("assets/images/pepsi_black.png"),
      cor: const Color.fromARGB(255, 238, 184, 19),
      tipo: "350 ml",
      preco: 8.50,
    ),
    Produto(
      id: 17,
      titulo: "Fanta Uva",
      imagem: Image.asset("assets/images/fanta_uva.png"),
      cor: const Color.fromARGB(255, 231, 192, 75),
      tipo: "350 ml",
      preco: 5.80,
    ),
    Produto(
      id: 18,
      titulo: "Fanta Laranja",
      imagem: Image.asset("assets/images/fanta_laranja_lata.png"),
      cor: const Color.fromARGB(255, 145, 121, 49),
      tipo: "450 ml",
      preco: 13.20,
    ),
    Produto(
      id: 19,
      titulo: "Kuat",
      imagem: Image.asset("assets/images/kuat.png"),
      cor: const Color.fromARGB(255, 90, 71, 14),
      tipo: "350 ml",
      preco: 5.99,
    ),
    Produto(
      id: 20,
      titulo: "Toddynho",
      imagem: Image.asset("assets/images/toddynho.png"),
      cor: const Color.fromARGB(255, 242, 192, 43),
      tipo: "200 ml",
      preco: 13.50,
    ),
    Produto(
      id: 21,
      titulo: "Sukita Laranja",
      imagem: Image.asset("assets/images/sukita_lata_laranja.png"),
      cor: const Color.fromARGB(255, 11, 132, 2),
      tipo: "1 Kg",
      preco: 8.90,
    ),
    Produto(
      id: 22,
      titulo: "Sukita Uva",
      imagem: Image.asset("assets/images/sukita_lata_uva.png"),
      cor: const Color.fromARGB(255, 155, 3, 197),
      tipo: "1 Kg",
      preco: 13.25,
    ),
    Produto(
      id: 23,
      titulo: "Turbaina",
      imagem: Image.asset("assets/images/turbaina_lata.png"),
      cor: const Color.fromARGB(255, 48, 204, 8),
      tipo: "1 Kg",
      preco: 14.50,
    )
  ];

  void adicionaFavorito(Produto produto) {
    favoritos.add(produto);
    notifyListeners();
  }

  void removeFavorito(Produto produtoRemover) {
    favoritos.removeWhere((produto) => produto.id == produtoRemover.id);
    notifyListeners();
  }

  bool pesquisaProdutoFavorito(int id) {
    for (int i = 0; i < favoritos.length; i++) {
      if (favoritos[i].id == id) {
        return true;
      }
    }
    return false;
  }

  void pesquisaProduto(String pesquisa) {
    pesquisas = produtos.where((produto) => produto.titulo.toLowerCase().contains(pesquisa.toLowerCase())).toList();
    if (pesquisas.isEmpty) {
      this.pesquisa = false;
    } else {
      this.pesquisa = true;
    }
    notifyListeners();
  }
}
