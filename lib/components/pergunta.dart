import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../data/perguntas_data.dart';

class Pergunta extends StatelessWidget {
  final int questaoAtual;

  const Pergunta({super.key, required this.questaoAtual});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: constraints.maxWidth * 0.95),
            child: AutoSizeText(
              perguntasData[questaoAtual].texto,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
              minFontSize: 18,
              maxFontSize: 30,
              softWrap: true,
            ),
          ),
        );
      },
    );
  }
}
