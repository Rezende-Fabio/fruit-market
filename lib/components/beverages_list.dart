import 'package:flutter/material.dart';
import '../models/Produto.dart';
import '../pages/information.dart';

class BeverageList extends StatelessWidget {
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
      padding: const EdgeInsets.only(top: 25,left: 12.5, right: 12.5),
      child: SizedBox(
        height: 700,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75
          ),
          itemCount: _prdutos.length,
          itemBuilder: (ctx, index) {
            final pr = _prdutos[index];
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Color.fromARGB(255, 174, 174, 174),
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 95,
                          child: pr.imagem,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Coca-Cola"),
                        Text("350 ml, Preço")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("R\$ 3,50"),
                        IconButton(onPressed: () => {}, icon: Icon(Icons.add))
                      ],
                    )
                  ],
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
