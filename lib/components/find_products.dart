import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/TodoCache.dart';

class FindProducts extends StatefulWidget {
  const FindProducts({super.key});

  @override
  State<FindProducts> createState() => _FindProductsState();
}

class _FindProductsState extends State<FindProducts> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoCache>(builder: (context, cache, _) {
      void _onTextChanged(String newText) { 
        cache.pesquisaProduto(newText);
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 10),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      onChanged: _onTextChanged,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Raio de arredondamento das bordas
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 213, 213, 213)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: const Color.fromARGB(255, 213, 213, 213),
                        filled: true,
                        hintText: 'Pesquisa',
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
