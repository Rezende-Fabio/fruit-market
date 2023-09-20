import 'package:flutter/material.dart';
import '../components/beverages_list.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text(
                  "Bebidas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Icon(Icons.filter)
              ],
            ),
          ),
          BeverageList(),
        ],
      ),
    );
  }
}
