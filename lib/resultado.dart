import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciar;

  const Resultado({Key? key, required this.pontuacao, required this.reiniciar})
      : super(key: key);

  String get fraseResultado {
    if (pontuacao < 8) {
      return "Ruim!";
    } else if (pontuacao < 12) {
      return "Regular!";
    } else if (pontuacao < 16) {
      return "Bom!";
    } else {
      return "Ótimo!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(fraseResultado,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              )),
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue,
            onSurface: Colors.red,
          ),
          onPressed: reiniciar,
          child: const Text('Reiniciar?'),
        )
      ],
    );
  }
}
