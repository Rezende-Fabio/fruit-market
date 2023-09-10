import 'package:flutter/material.dart';
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
      child: SingleChildScrollView(
      padding: const EdgeInsets.only(top: 25),
      child: SizedBox(
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
            Container(
              height: 1, // Altura da linha
              color: Colors.black,
              margin: const EdgeInsets.only(top: 15, bottom: 15), // Cor da linha
            ),
            FavoriteList(),
            Container(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 8),
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                onPressed: () => {},
                child: Text(
                  "Adcionar todos ao Corrinho",
                  style: TextStyle(fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
