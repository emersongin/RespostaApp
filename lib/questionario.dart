import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, dynamic>> perguntas;
  final int pergunta;
  final void Function(int) responder;

  const Questionario({
    Key? key,
    required this.perguntas,
    required this.pergunta,
    required this.responder,
  }) : super(key: key);

  bool get existePergunta {
    return pergunta < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    String questao = existePergunta ? perguntas[pergunta]["texto"] : '';
    List<Map<String, dynamic>> respostas =
        existePergunta ? perguntas[pergunta]["respostas"] : [];
    List<Resposta> widgets = respostas
        .map((resposta) => Resposta(
            texto: resposta['texto'],
            selecionado: () => responder((resposta['nota']))))
        .toList();

    return Column(
      children: <Widget>[
        Questao(texto: questao),
        ...widgets,
      ],
    );
  }
}
