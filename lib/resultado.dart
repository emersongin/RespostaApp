import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;

  const Resultado({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(texto,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          )),
    );
  }
}
