import 'package:flutter/material.dart';
import '../models/Produto.dart';
import '../pages/information.dart';

class ProductsList extends StatelessWidget {
  final _prdutos = [
    Produto(
      id: 6,
      titulo: "Maçã",
      imagem: Image.asset("assets/maca.png"),
      cor: const Color.fromARGB(255, 197, 16, 16),
      tipo: "1 Kg",
      preco: 10.50,
    ),
    Produto(
      id: 7,
      titulo: "Banana da Terra",
      imagem: Image.asset("assets/banana.png"),
      cor: const Color.fromARGB(255, 238, 184, 19),
      tipo: "1 Kg",
      preco: 8.50,
    ),
    Produto(
      id: 8,
      titulo: "Pera",
      imagem: Image.asset("assets/pera.png"),
      cor: const Color.fromARGB(255, 231, 192, 75),
      tipo: "1 Kg",
      preco: 5.80,
    ),
    Produto(
      id: 9,
      titulo: "Abacaxi",
      imagem: Image.asset("assets/abacaxi.png"),
      cor: const Color.fromARGB(255, 145, 121, 49),
      tipo: "1 Kg",
      preco: 13.20,
    ),
    Produto(
      id: 10,
      titulo: "Kiwi",
      imagem: Image.asset("assets/kiwi.png"),
      cor: const Color.fromARGB(255, 90, 71, 14),
      tipo: "1 Kg",
      preco: 5.99,
    ),
    Produto(
      id: 11,
      titulo: "Mamão",
      imagem: Image.asset("assets/mamao.png"),
      cor: const Color.fromARGB(255, 242, 192, 43),
      tipo: "1 Kg",
      preco: 13.50,
    ),
    Produto(
      id: 12,
      titulo: "Abacate",
      imagem: Image.asset("assets/abacate.png"),
      cor: const Color.fromARGB(255, 11, 132, 2),
      tipo: "1 Kg",
      preco: 8.90,
    ),
    Produto(
      id: 13,
      titulo: "Uva Roxa",
      imagem: Image.asset("assets/uva_roxa.png"),
      cor: const Color.fromARGB(255, 155, 3, 197),
      tipo: "1 Kg",
      preco: 13.25,
    ),
    Produto(
      id: 14,
      titulo: "Uva Verde",
      imagem: Image.asset("assets/uva_verde.png"),
      cor: const Color.fromARGB(255, 48, 204, 8),
      tipo: "1 Kg",
      preco: 14.50,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.5, right: 12.5),
      child: SizedBox(
        height: 600,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Número de colunas
          ),
          itemCount: _prdutos.length,
          itemBuilder: (ctx, index) {
            final pr = _prdutos[index];
            return Padding(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Information(pr);
                    }),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: pr.cor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: pr.cor,
                      width: 2.0,
                    ),
                  ),
                  padding: const EdgeInsets.all(15),
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
                          pr.titulo,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
