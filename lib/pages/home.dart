import 'package:flutter/material.dart';
import 'package:fruit_market/pages/explore.dart';
import '../components/bottom_navigator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageController = PageController();

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
        children: [
          Container(
            child: Text("dsjhfjhds"),
          ),
          Explore(),
          Container(
            child: Text("dsjhfjhds"),
          ),
          Container(
            child: Text("dsjhfjhds"),
          ),
          Container(
            child: Text("dsjhfjhds"),
          )
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
