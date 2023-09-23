import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/models/TodoCache.dart';
import '../components/button_footer.dart';
import '../components/carousel.dart';
import '../components/line.dart';
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
  final _listaImagens = [
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
    return Consumer<TodoCache>(builder: (context, cache, _) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Carousel(_pageController, _listaImagens, widget.produto.imagem,
                  _paginaAtual),
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
                    cache.pesquisaProduto(widget.produto.id)
                        ? IconButton(
                            onPressed: () => {
                                  cache.removeFavorito(widget.produto)
                                },
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 33,
                            ))
                        : IconButton(
                            onPressed: () => {
                              cache.adicionaFavorito(widget.produto)
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
                        IconButton(
                          onPressed: () => {
                            _qtde > 1
                                ? setState(() {
                                    _qtde -= 1;
                                  })
                                : false
                          },
                          icon: const Icon(
                            FontAwesomeIcons.minus,
                            color: Colors.grey,
                            size: 18,
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
                            FontAwesomeIcons.plus,
                            color: Colors.green,
                            size: 18,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Detalhes do produto",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      IconButton(
                                        onPressed: expandirContainer,
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
                              padding:
                                  const EdgeInsets.only(left: 10, right: 5),
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Nutrições",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: const Text("100gr"),
                                              ),
                                              IconButton(
                                                onPressed: () => {},
                                                icon: isExpanded
                                                    ? const Icon(
                                                        Icons
                                                            .keyboard_arrow_down_sharp,
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
                              padding:
                                  const EdgeInsets.only(left: 10, right: 5),
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Avaliações",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: const Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(
                                                          255, 217, 158, 30),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(
                                                          255, 217, 158, 30),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(
                                                          255, 217, 158, 30),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(
                                                          255, 217, 158, 30),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(
                                                          255, 217, 158, 30),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () => {},
                                                icon: isExpanded
                                                    ? const Icon(
                                                        Icons
                                                            .keyboard_arrow_down_sharp,
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
    });
  }
}
