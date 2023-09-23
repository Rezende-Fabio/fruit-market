import 'package:flutter/material.dart';
import 'package:fruit_market/models/TodoCache.dart';
import 'package:provider/provider.dart';
import '../models/Produto.dart';

class BeverageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoCache>(builder: (context, cache, _) {
      return Container(
        padding: const EdgeInsets.only(top: 25, left: 12.5, right: 12.5),
        height: MediaQuery.of(context).size.height * 0.8,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.70),
          itemCount: cache.bebidas.length,
          itemBuilder: (ctx, index) {
            final pr = cache.bebidas[index];
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: const Color.fromARGB(255, 174, 174, 174),
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 95,
                          child: pr.imagem,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pr.titulo,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "${pr.tipo}, Preço",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.5,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "R\$ 3,50",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.green),
                            child: IconButton(
                              onPressed: () => {},
                              icon: const Icon(Icons.add),
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
              ),
            );
          },
        ),
      );
    });
  }
}
