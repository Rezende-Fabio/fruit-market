import 'package:flutter/material.dart';

class Produto {
  final int id;
  final String titulo;
  final Image imagem;
  final Color cor;

  Produto({
    required this.id,
    required this.titulo,
    required this.imagem,
    required this.cor,
  });

}