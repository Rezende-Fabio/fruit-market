import 'package:flutter/material.dart';

class Produto {
  final int id;
  final String titulo;
  final Image imagem;
  final Color cor;
  final double preco;
  final String tipo;

  Produto({
    required this.id,
    required this.titulo,
    required this.imagem,
    required this.cor,
    required this.preco,
    required this.tipo,
  });
}
