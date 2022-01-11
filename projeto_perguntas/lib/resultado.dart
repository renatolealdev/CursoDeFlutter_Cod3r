import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() _quandoReiniciarQuestionario;

  // ignore: use_key_in_widget_constructors
  const Resultado(this.pontuacao, this._quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!!';
    } else {
      return 'Nível Jedi!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
              color: Colors.blueAccent.shade700,
            ),
          ),
        ),
        TextButton(
          onPressed: _quandoReiniciarQuestionario,
          child: Text(
            'Reiniciar?',
            style: TextStyle(
              color: Colors.redAccent.shade700,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
