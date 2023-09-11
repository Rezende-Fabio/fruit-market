import 'package:flutter/material.dart';

class FindProducts extends StatelessWidget {
  const FindProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 350,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Encontrar Produtos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Raio de arredondamento das bordas
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 213, 213, 213)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: const Color.fromARGB(255, 213, 213, 213),
                    filled: true,
                    hintText: 'Pesquisa',
                    prefixIcon: Icon(Icons.search)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
