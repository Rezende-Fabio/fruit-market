import 'package:flutter/material.dart';
import '../models/Favorito.dart';

class FavoriteList extends StatelessWidget {
  final _favoritos = [
    Favorito(
      id: 1,
      titulo: "Coca-Cola",
      imagem: Image.asset("assets/coca_cola.png"),
      preco: 15.99,
      litragem: "350 ML",
    ),
    Favorito(
        id: 2,
        titulo: "Pepsi Black",
        imagem: Image.asset("assets/pepsi_black.png"),
        preco: 13.99,
        litragem: "350 ML",
    ),
    Favorito(
        id: 3,
        titulo: "Fanta Laranja",
        imagem: Image.asset("assets/fanta_laranja.png"),
        preco: 18.50,
        litragem: "650 ML",
    ),
    Favorito(
        id: 4,
        titulo: "Suco Laranja",
        imagem: Image.asset("assets/suco_laranja.png"),
        preco: 5.85,
        litragem: "180 ML",
    ),
    Favorito(
        id: 5,
        titulo: "Suco Natural Uva",
        imagem: Image.asset("assets/suco_uva.png"),
        preco: 20.50,
        litragem: "1 L",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 365,
      child: ListView.builder(
        itemCount: _favoritos.length,
        itemBuilder: (ctx, index) {
          final fv = _favoritos[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 59, 59, 59)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2, bottom: 15, right: 5),
                    child: Container(
                      width: 55,
                      child: fv.imagem,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              fv.titulo,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              "${fv.litragem}, Preço",
                              style: const TextStyle(color: Color.fromARGB(255, 146, 146, 146)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "R\$ ${fv.preco.toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
