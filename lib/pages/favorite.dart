import 'package:flutter/material.dart';
import 'package:fruit_market/components/line.dart';
import '../components/button_footer.dart';
import '../components/favorite_list.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Favoritos",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Line(),
              FavoriteList(),
            ],
          ),
        ),
        const ButtonFooter("Adcionar todos ao Corrinho"),
      ],
    ),
    );
  }
}
