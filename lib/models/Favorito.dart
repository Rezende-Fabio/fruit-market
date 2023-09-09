import 'package:flutter/material.dart';

class Favorito {
  final int id;
  final String titulo;
  final Image imagem;
  final double preco;
  final String litragem;

  Favorito({
    required this.id,
    required this.titulo,
    required this.imagem,
    required this.preco,
    required this.litragem
  });
}
