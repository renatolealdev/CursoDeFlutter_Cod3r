import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  // ignore: use_key_in_widget_constructors
  const Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(
            fontSize: 22, color: Colors.black87, fontWeight: FontWeight.w700),
        textAlign: TextAlign.center,
      ),
    );
  }
}
