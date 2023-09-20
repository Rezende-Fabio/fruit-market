import 'package:flutter/material.dart';
import '../models/Produto.dart';

class BeverageList extends StatelessWidget {
  final _prdutos = [
    Produto(
      id: 6,
      titulo: "Coca-Cola",
      imagem: Image.asset("assets/coca_cola.png"),
      cor: const Color.fromARGB(255, 197, 16, 16),
      tipo: "350 ml",
      preco: 10.50,
    ),
    Produto(
      id: 7,
      titulo: "Pepsi Black",
      imagem: Image.asset("assets/pepsi_black.png"),
      cor: const Color.fromARGB(255, 238, 184, 19),
      tipo: "350 ml",
      preco: 8.50,
    ),
    Produto(
      id: 8,
      titulo: "Fanta Uva",
      imagem: Image.asset("assets/fanta_uva.png"),
      cor: const Color.fromARGB(255, 231, 192, 75),
      tipo: "350 ml",
      preco: 5.80,
    ),
    Produto(
      id: 9,
      titulo: "Fanta Laranja",
      imagem: Image.asset("assets/fanta_laranja_lata.png"),
      cor: const Color.fromARGB(255, 145, 121, 49),
      tipo: "450 ml",
      preco: 13.20,
    ),
    Produto(
      id: 10,
      titulo: "Kuat",
      imagem: Image.asset("assets/kuat.png"),
      cor: const Color.fromARGB(255, 90, 71, 14),
      tipo: "350 ml",
      preco: 5.99,
    ),
    Produto(
      id: 11,
      titulo: "Toddynho",
      imagem: Image.asset("assets/toddynho.png"),
      cor: const Color.fromARGB(255, 242, 192, 43),
      tipo: "200 ml",
      preco: 13.50,
    ),
    Produto(
      id: 12,
      titulo: "Abacate",
      imagem: Image.asset("assets/coca_cola.png"),
      cor: const Color.fromARGB(255, 11, 132, 2),
      tipo: "1 Kg",
      preco: 8.90,
    ),
    Produto(
      id: 13,
      titulo: "Uva Roxa",
      imagem: Image.asset("assets/coca_cola.png"),
      cor: const Color.fromARGB(255, 155, 3, 197),
      tipo: "1 Kg",
      preco: 13.25,
    ),
    Produto(
      id: 14,
      titulo: "Uva Verde",
      imagem: Image.asset("assets/coca_cola.png"),
      cor: const Color.fromARGB(255, 48, 204, 8),
      tipo: "1 Kg",
      preco: 14.50,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 12.5, right: 12.5),
      child: SizedBox(
        height: 700,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.70),
          itemCount: _prdutos.length,
          itemBuilder: (ctx, index) {
            final pr = _prdutos[index];
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: const Color.fromARGB(255, 174, 174, 174),
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
                        SizedBox(
                          width: 95,
                          child: pr.imagem,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pr.titulo,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "${pr.tipo}, Preço",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.5,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "R\$ 3,50",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.green),
                            child: IconButton(
                              onPressed: () => {},
                              icon: const Icon(Icons.add),
                              color: Colors.white,
                            ),
                          ),
                        )
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
