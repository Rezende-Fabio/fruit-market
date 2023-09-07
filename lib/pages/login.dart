import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Colors.white, Color.fromARGB(255, 228, 185, 110)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Container(
                  width: 55,
                  child: Image.asset("assets/cenoura.png"),
                ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Login"),
                        Text("Entre com o seu E-mail e senha")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        TextField(
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              labelText: "E-mail",
                              prefixIcon: Icon(Icons.account_circle),
                            )),
                        TextField(
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              labelText: "Senha",
                              prefixIcon: Icon(Icons.lock),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 35, right: 35, bottom: 10),
                    width: double.infinity,
                    height: 65,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("Login"),
                    ),
                  ),
                  Text("Não tem conta? Cadastre-se")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
