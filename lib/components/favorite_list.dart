import 'package:flutter/material.dart';
import 'package:fruit_market/models/Produto.dart';
import 'package:fruit_market/models/TodoCache.dart';
import 'package:provider/provider.dart';

class FavoriteList extends StatefulWidget {
  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoCache>(builder: (context, cache, _) {
      return Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        height: MediaQuery.of(context).size.height * 0.7,
        child: ListView.builder(
          itemCount: cache.favoritos.length,
          itemBuilder: (ctx, index) {
            final fv = cache.favoritos[index];
            return Dismissible(
              background: Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                padding: const EdgeInsets.only(left: 12, right: 12),
                color: Colors.red,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      size: 25,
                    ),
                    Icon(
                      Icons.delete,
                      size: 25,
                    ),
                  ],
                ),
              ),
              onDismissed: (DismissDirection direction) {
                setState(() {
                  cache.removeFavorito(fv);
                });
              },
              key: UniqueKey(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom:
                          BorderSide(color: Color.fromARGB(255, 59, 59, 59)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 2, bottom: 15, right: 5),
                        child: SizedBox(
                          width: 55,
                          child: fv.imagem,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  fv.titulo,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "${fv.tipo}, Preço",
                                  style: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 146, 146, 146)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "R\$ ${fv.preco.toString()}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
