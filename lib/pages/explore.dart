import 'package:flutter/material.dart';
import '../components/products_list.dart';
import '../components/find_products.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.only(top: 25),
      child: SizedBox(
        child: Column(
          children: [
            const FindProducts(),
            ProductsList(),
          ],
        ),
      ),
    ));
  }
}
