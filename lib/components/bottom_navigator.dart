import 'package:flutter/material.dart';

class BottomNavgator extends StatelessWidget {
  const BottomNavgator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
        child: BottomNavigationBar(
          elevation: 85,
          fixedColor: Colors.blue,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 242, 242, 242),
              icon: Icon(Icons.add_business),
              label: 'Loja',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explorar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Carrinho',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Conta',
            ),
          ],
        ),
      ),
    );
  }
}
