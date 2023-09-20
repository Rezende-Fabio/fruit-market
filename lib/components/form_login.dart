import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool _verSenha = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: const TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: "E-mail",
              ),
            ),
          ),
          TextField(
            obscureText: _verSenha,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Senha",
              suffixIcon: IconButton(
                icon: _verSenha
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: () => {
                  setState(() {
                    _verSenha = !_verSenha;
                  })
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Esqueceu a senha?")
              ],
            ),
          )
        ],
      ),
    );
  }
}
