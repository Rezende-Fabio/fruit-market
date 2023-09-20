import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final PageController _pageController;
  final List _listaImagens;
  final Image _imagem;
  final int _paginaAtual;

  const Carousel(this._pageController, this._listaImagens, this._imagem, this._paginaAtual);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: _imagem,
                );
              },
            ),
          ),
          _buildPontos(),
        ],
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
