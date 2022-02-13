import 'package:flutter/material.dart';

import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _pergunta = 0;
  int _pontuacao = 0;
  final List<Map<String, dynamic>> _perguntas = [
    {
      "texto": "Qual é a sua cor favorita?",
      "respostas": [
        {"texto": "azul", "nota": 10},
        {"texto": "vermelho", "nota": 5},
        {"texto": "verde", "nota": 3},
      ]
    },
    {
      "texto": "Qual é a seu animal favorito?",
      "respostas": [
        {"texto": "gato", "nota": 10},
        {"texto": "cachorro", "nota": 5},
        {"texto": "peixe", "nota": 3},
      ]
    },
    {
      "texto": "Qual é a sua moto favorita?",
      "respostas": [
        {"texto": "xl1200ns", "nota": 10},
        {"texto": "cb1000r", "nota": 5},
        {"texto": "mt07", "nota": 3},
      ],
    },
  ];

  void _responder(int? pontuacao) {
    if (existePergunta) {
      setState(() {
        _pergunta++;
        _pontuacao += pontuacao!;
      });
    }
  }

  void _reinicar() {
    setState(() {
      _pergunta = 0;
      _pontuacao = 0;
    });
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
            : Resultado(pontuacao: _pontuacao, reiniciar: _reinicar),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}
