import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../data/perguntas_data.dart';

class Pergunta extends StatelessWidget {
  final int questaoAtual;

  const Pergunta({super.key, required this.questaoAtual});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return SizedBox(
      width: altura > 800 ? 350 : 320,
      height: altura > 800 ? altura * 0.3 : altura * 0.3,
      child: Center(
        child: AutoSizeText(perguntasData[questaoAtual].texto,
            textAlign: TextAlign.center,
            stepGranularity: 0.5,
            style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
                height: 1.3),
            minFontSize: altura > 800 ? 19 : 15,
            maxFontSize: 100,
            maxLines: 10,
            overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
