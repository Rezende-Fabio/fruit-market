import 'package:flutter/material.dart';
import 'package:fruit_market/models/TodoCache.dart';
import 'package:provider/provider.dart';
import '../pages/information.dart';

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _crossAxisCount = (MediaQuery.of(context).size.width / 170).floor();
    return Consumer<TodoCache>(builder: (context, cache, _) {
      return Container(
        padding: const EdgeInsets.only(left: 12.5, right: 12.5),
        height: MediaQuery.of(context).size.height * 0.75,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _crossAxisCount, childAspectRatio: 0.90),
          itemCount: cache.pesquisa ? cache.pesquisas.length  : cache.produtos.length,
          itemBuilder: (ctx, index) {
            final pr = cache.pesquisa ? cache.pesquisas[index] : cache.produtos[index];
            return Padding(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Information(pr);
                    }),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: pr.cor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: pr.cor,
                      width: 2.0,
                    ),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Center(
                      child: Column(
                    children: [
                      SizedBox(
                        width: 95,
                        child: pr.imagem,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          pr.titulo,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
