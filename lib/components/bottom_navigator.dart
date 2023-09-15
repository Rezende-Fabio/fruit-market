import 'package:flutter/material.dart';

class BottomNavgator extends StatelessWidget {
  final PageController pageController;

  BottomNavgator(this.pageController);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
      child: BottomNavigationBar(
        elevation: 15 ,
        fixedColor: Color.fromARGB(255, 34, 192, 2),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            icon: Icon(Icons.add_business),
            label: 'Loja',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.no_drinks),
            label: 'Bebidas',
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
        currentIndex: pageController?.page?.round() ?? 1,
        onTap: (index) {
          pageController.jumpToPage(index);
        },
      ),
    );
  }
}
