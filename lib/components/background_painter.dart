import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui' as ui;

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final random = Random();
    final numPoints = 4; // Número de pontos aleatórios

    for (int i = 0; i < numPoints; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;

      // Gere uma cor aleatória entre vermelho, laranja, verde e azul
      final randomColor = Color.fromARGB(
        255,
        [
          Colors.red,
          Colors.orange,
          Colors.green,
          Colors.blue
        ][random.nextInt(4)]
            .red,
        [
          Colors.red,
          Colors.orange,
          Colors.green,
          Colors.blue
        ][random.nextInt(4)]
            .green,
        [
          Colors.red,
          Colors.orange,
          Colors.green,
          Colors.blue
        ][random.nextInt(4)]
            .blue,
      );

      final radius = random.nextDouble() * 70; // Tamanho aleatório dos pontos

      final paint = Paint()
        ..color = randomColor.withOpacity(0.3)
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.fill
        ..imageFilter = ui.ImageFilter.blur(
            sigmaX: 35.0, sigmaY: 35.0, tileMode: TileMode.decal);

      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}