import 'package:flutter/material.dart';
import '../components/form_login.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "Entre com o seu E-mail e senha",
                          style: TextStyle(
                              color: Color.fromARGB(255, 109, 109, 109)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Center(
              child: FormLogin(),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () =>{
                        Navigator.of(context).pushNamed("/home")
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Não tem conta?  "),
                      Text(
                        "Cadastre-se",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
