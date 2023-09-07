import 'package:flutter/material.dart';
import '../components/bottom_navigator.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final _teste = [
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4,
    1,
    2,
    3,
    4
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 25),
        child: SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Encontrar Produtos",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Raio de arredondamento das bordas
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 213, 213, 213)),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              fillColor: Color.fromARGB(255, 213, 213, 213),
                              filled: true,
                              hintText: 'Pesquisa',
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 600,
                width: 365,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Número de colunas
                  ),
                  itemCount: _teste.length,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 15,
                        child: Text("1"),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavgator(),
    );
  }
}
