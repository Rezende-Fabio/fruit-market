import 'package:flutter/material.dart';

class ButtonFooter extends StatelessWidget {
  final String texto;
  const ButtonFooter(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 8),
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          texto,
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
