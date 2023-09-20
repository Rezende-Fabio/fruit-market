import 'package:flutter/material.dart';
import '../components/button_footer.dart';
import '../components/line.dart';
import '../models/Favorito.dart';
import '../models/Produto.dart';
import 'package:provider/provider.dart';

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
  bool isExpanded = false;
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

  void expandirContainer() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    Favorito _favorito = (context).select((Favorito f) => f);
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
                        return SizedBox(
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
                      Text("${widget.produto.tipo}, Preço",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 146, 146, 146)))
                    ],
                  ),
                  _favorito.pesquisaProduto(widget.produto.id)
                      ? IconButton(
                          onPressed: () => {
                                _favorito.removeFavorito(widget.produto),
                                setState(() {})
                              },
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 33,
                          ))
                      : IconButton(
                          onPressed: () => {
                            _favorito.adicionaFavorito(widget.produto),
                            setState(() {})
                          },
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 30,
                          ),
                        ),
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
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: IconButton(
                          onPressed: () => {
                            _qtde > 1
                                ? setState(() {
                                    _qtde -= 1;
                                  })
                                : false
                          },
                          icon: const Icon(
                            Icons.minimize_rounded,
                            color: Colors.grey,
                          ),
                        ),
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
                        icon: const Icon(
                          Icons.add_rounded,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "R\$ ${(_qtde * widget.produto.preco).toStringAsFixed(2)}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Line(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: isExpanded ? 130 : 40,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Detalhes do produto",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15),
                                    ),
                                    IconButton(
                                      onPressed: expandirContainer,
                                      icon: isExpanded
                                          ? const Icon(Icons.keyboard_arrow_down_sharp,
                                              size: 28)
                                          : const Icon(Icons.keyboard_arrow_right_sharp,
                                              size: 28),
                                    )
                                  ],
                                ),
                                Opacity(
                                  opacity: isExpanded ? 1 : 0,
                                  child: const Text(
                                    "Lorem ipsum dolor sit amet. Ut cumque dolore 33 omnis exercitationem ut sint ipsum vel optio magnam et natus expedita qui debitis delectus eum tempore voluptas. Qui voluptatem temporibus in odit dolores ut temporibus alias a enim vitae qui consequatur laborum!",
                                    softWrap: true,
                                    style: TextStyle(
                                      height: 1.5,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Line(),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Nutrições", style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15),),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(20)),
                                              child: Text("100gr"),
                                            ),
                                            IconButton(
                                              onPressed: () => {},
                                              icon: isExpanded
                                                  ? const Icon(
                                                      Icons.keyboard_arrow_down_sharp,
                                                      size: 28)
                                                  : const Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      size: 28),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Line(),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Avaliações", style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15),),
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(5),
                                              child: const Row(
                                                children: [
                                                  Icon(Icons.star, color: Color.fromARGB(255, 217, 158, 30),),
                                                  Icon(Icons.star, color: Color.fromARGB(255, 217, 158, 30),),
                                                  Icon(Icons.star, color: Color.fromARGB(255, 217, 158, 30),),
                                                  Icon(Icons.star, color: Color.fromARGB(255, 217, 158, 30),),
                                                  Icon(Icons.star, color: Color.fromARGB(255, 217, 158, 30),),
                                                ],
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () => {},
                                              icon: isExpanded
                                                  ? const Icon(
                                                      Icons.keyboard_arrow_down_sharp,
                                                      size: 28)
                                                  : const Icon(
                                                      Icons
                                                          .keyboard_arrow_right_sharp,
                                                      size: 28),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: ButtonFooter("Adcionar no Carrinho"),
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
                color: _paginaAtual == i["id"]
                    ? const Color.fromARGB(255, 33, 225, 3)
                    : Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(35.0))),
          );
        }).toList(),
      ),
    );
  }
}
