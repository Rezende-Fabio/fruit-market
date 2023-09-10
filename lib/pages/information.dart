import 'package:flutter/material.dart';
import '../models/Produto.dart';

class Information extends StatefulWidget {
  final Produto produto;

  Information(this.produto);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  int _qtde = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 234, 234, 234),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => {Navigator.of(context).pop()},
                          icon: const Icon(Icons.arrow_back_ios_new),
                        ),
                        IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.ios_share_rounded),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    child: widget.produto.imagem,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 55, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 15,
                          height: 3,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 33, 225, 3),
                            borderRadius: BorderRadius.all(Radius.circular(35.0))
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 3,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 189, 189, 189),
                            borderRadius: BorderRadius.all(Radius.circular(35.0))
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 3,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 189, 189, 189),
                            borderRadius: BorderRadius.all(Radius.circular(35.0))
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.produto.titulo,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                      const Text("1KG, Preço",
                          style: TextStyle(
                              color: Color.fromARGB(255, 146, 146, 146)))
                    ],
                  ),
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.favorite_border),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => {
                          if (_qtde > 1)
                            {
                              setState(() {
                                _qtde -= 1;
                              })
                            }
                        },
                        icon: const Icon(Icons.minimize_rounded),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 149, 149, 149), // Cor da borda
                            width: 2.0, // Largura da borda
                          ),
                        ),
                        child: Text(_qtde.toString()),
                      ),
                      IconButton(
                        onPressed: () => {
                          setState(() {
                            _qtde += 1;
                          })
                        },
                        icon: const Icon(Icons.add_rounded),
                      )
                    ],
                  ),
                  Text(
                    "R\$ ${_qtde * widget.produto.preco}",
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Container(
                height: 1,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
