import 'package:flutter/material.dart';
import '../models/Produto.dart';

class Information extends StatefulWidget {
  final Produto produto;

  Information(this.produto);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  final PageController _pageController = PageController();

  int _qtde = 1;
  int _paginaAtual = 0;
  var _listaImagens = [
    {"id": 0, "imagem": ""},
    {"id": 1, "imagem": ""},
    {"id": 2, "imagem": ""},
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      int prox = _pageController.page!.round();
      if (_paginaAtual != prox) {
        setState(() {
          _paginaAtual = prox;
        });
      }
    });
    super.initState();
  }

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
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: _listaImagens.length,
                      itemBuilder: (_, index) {
                        return Container(
                          width: 200,
                          child: widget.produto.imagem,
                        );
                      },
                    ),
                  ),
                  _buildPontos(),
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
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
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
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

  Widget _buildPontos() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _listaImagens.map((i) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: _paginaAtual == i["id"] ? 15 : 5,
            height: 3,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                color: _paginaAtual == i["id"] ? Color.fromARGB(255, 33, 225, 3) : Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(35.0))),
          );
        }).toList(),
      ),
    );
  }
}
