import 'package:flutter/material.dart';
import 'package:fruit_market/pages/explore.dart';
import '../components/bottom_navigator.dart';
import '../pages/favorite.dart';
import '../pages/desenvolvimento.dart';
import '../pages/beverages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageController = PageController(initialPage: 1);

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Desenvolvimento(),
          Explore(),
          Beverages(),
          Favorite(),
          Desenvolvimento()
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: pageController,
          builder: (context, snapshot) {
            return BottomNavgator(pageController);
          }),
    );
  }
}
