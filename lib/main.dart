import 'package:flutter/material.dart';

import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _pergunta = 0;
  final List<Map<String, dynamic>> _perguntas = [
    {
      "texto": "Qual é a sua cor favorita?",
      "respostas": ['azul', 'vermelho', 'verde'],
    },
    {
      "texto": "Qual é a seu animal favorito?",
      "respostas": ['gato', 'cachorro', 'peixe'],
    },
    {
      "texto": "Qual é a sua moto favorita?",
      "respostas": ['xl1200ns', 'mt07', 'cb1000r'],
    },
  ];

  void _responder() {
    if (existePergunta) {
      setState(() {
        _pergunta++;
      });
    }
  }

  bool get existePergunta {
    return _pergunta < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Perguntas')),
        body: existePergunta
            ? Questionario(
                perguntas: _perguntas,
                pergunta: _pergunta,
                responder: _responder,
              )
            : const Resultado(texto: 'Parabéns!'),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}
