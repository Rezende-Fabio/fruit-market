import 'package:flutter/material.dart';
import '../models/Produtos.dart';

class ProductsList extends StatelessWidget {
  final _prdutos = [
    Produtos(
      id: 1,
      titulo: "Maçâ",
      imagem: Image.asset("assets/maca.png"),
      cor: Color.fromARGB(255, 197, 16, 16),
    ),
    Produtos(
      id: 2,
      titulo: "Banana da Terra",
      imagem: Image.asset("assets/banana.png"),
      cor: const Color.fromARGB(255, 238, 184, 19),
    ),
    Produtos(
      id: 3,
      titulo: "Pera",
      imagem: Image.asset("assets/pera.png"),
      cor: Color.fromARGB(255, 231, 192, 75),
    ),
    Produtos(
      id: 4,
      titulo: "Abacaxi",
      imagem: Image.asset("assets/abacaxi.png"),
      cor: Color.fromARGB(255, 145, 121, 49),
    ),
    Produtos(
      id: 5,
      titulo: "Kiwi",
      imagem: Image.asset("assets/kiwi.png"),
      cor: Color.fromARGB(255, 90, 71, 14),
    ),
    Produtos(
      id: 6,
      titulo: "Mamão",
      imagem: Image.asset("assets/mamao.png"),
      cor: Color.fromARGB(255, 242, 192, 43),
    ),
    Produtos(
      id: 7,
      titulo: "Abacate",
      imagem: Image.asset("assets/abacate.png"),
      cor: Color.fromARGB(255, 11, 132, 2),
    ),
    Produtos(
      id: 8,
      titulo: "Uva Roxa",
      imagem: Image.asset("assets/uva_roxa.png"),
      cor: Color.fromARGB(255, 155, 3, 197),
    ),
    Produtos(
      id: 8,
      titulo: "Uva Verde",
      imagem: Image.asset("assets/uva_verde.png"),
      cor: Color.fromARGB(255, 48, 204, 8),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de colunas
      ),
      itemCount: _prdutos.length,
      itemBuilder: (ctx, index) {
        final pr = _prdutos[index];
        return Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              color: pr.cor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: pr.cor,
                width: 2.0,
              ),
            ),
            padding: EdgeInsets.all(15),
            child: Center(
                child: Column(
              children: [
                Container(
                  width: 95,
                  child: pr.imagem,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "${pr.titulo}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )),
          ),
        );
      },
    );
  }
}
