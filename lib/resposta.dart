import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() selecionado;

  const Resposta({
    Key? key,
    required this.texto,
    required this.selecionado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(backgroundColor: null),
        child: Text(
          texto,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: selecionado,
      ),
    );
  }
}
