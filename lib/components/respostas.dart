import 'package:flutter/material.dart';
import 'package:meudomapp/data/dom_enum.dart';
import 'package:meudomapp/screens/finalizado.dart';
import 'package:meudomapp/widgets/botao_resposta.dart';
import 'package:meudomapp/widgets/botao_padrao.dart';

class Respostas extends StatefulWidget {
  final bool perguntaFinal;
  final int questaoAtual;
  final void Function(int pontos, BuildContext context) onResponder;
  final VoidCallback anterior;
  final VoidCallback finalizar;
  final Map<Dom, int> pontuacao;

  const Respostas({
    super.key,
    required this.perguntaFinal,
    required this.questaoAtual,
    required this.onResponder,
    required this.anterior,
    required this.finalizar,
    required this.pontuacao,
  });

  @override
  State<Respostas> createState() => _RespostasState();
}

class _RespostasState extends State<Respostas> {
  String textoDebugPontuacao() {
    return pontuacaoPorGrupo.entries
        .map((e) => 'Grupo ${e.key} = ${e.value}')
        .join(' | ');
  }

  int? opcaoSelecionada;
  void irParaFinalizado(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Finalizado(pontuacao: widget.pontuacao),
      ),
    );
  }

  Map<int, List<int>> grupos = {
    1: [1, 14, 27, 40, 53, 66, 79, 86, 93, 100],
    2: [2, 15, 28, 41, 54, 67, 80, 87, 94, 101],
    3: [3, 16, 29, 42, 55, 68, 81, 88, 95, 102],
    4: [4, 17, 30, 43, 56, 69, 82, 89, 96, 103],
    5: [5, 18, 31, 44, 57, 70, 83, 90, 97, 104],
    6: [6, 19, 32, 45, 58, 71, 84, 91, 98, 105],
    7: [7, 20, 33, 46, 59, 72, 85, 92, 99, 106],
    8: [8, 21, 34, 47, 60, 73],
    9: [9, 22, 35, 48, 61, 74],
    10: [10, 23, 36, 49, 62, 75],
    11: [11, 24, 37, 50, 63, 76],
    12: [12, 25, 38, 51, 64, 77],
    13: [13, 26, 39, 52, 65, 78],
  };

  int grupoDaQuestao(int numeroQuestao) {
    for (final entry in grupos.entries) {
      if (entry.value.contains(numeroQuestao)) {
        return entry.key;
      }
    }
    throw Exception('Questão $numeroQuestao não pertence a nenhum grupo');
  }

  final Map<int, int> pontuacaoPorGrupo = {for (var i = 1; i <= 13; i++) i: 0};

  void atribuirPontuacao() {
    if (opcaoSelecionada == null) return;

    final numeroQuestao = widget.questaoAtual + 1;
    final grupo = grupoDaQuestao(numeroQuestao);
    final pontos = opcaoSelecionada!; // 0 a 3
    setState(() {
      pontuacaoPorGrupo[grupo] = pontuacaoPorGrupo[grupo]! + pontos;
      opcaoSelecionada = null;
    });
  }

  final List<String> opcoes = ['NUNCA', 'POUCO', 'MUITO', 'SEMPRE'];

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          BotaoResposta(
            texto: opcoes[3],
            isSelected: opcaoSelecionada == 3,
            grupo: 1,
            pontuacao: 3,
            onTap: () {
              setState(() {
                opcaoSelecionada = 3;
              });
            },
          ),
          BotaoResposta(
            texto: opcoes[2],
            isSelected: opcaoSelecionada == 2,
            grupo: 1,
            pontuacao: 2,
            onTap: () {
              setState(() {
                opcaoSelecionada = 2;
              });
            },
          ),
          BotaoResposta(
            texto: opcoes[1],
            isSelected: opcaoSelecionada == 1,
            grupo: 1,
            pontuacao: 1,
            onTap: () {
              setState(() {
                opcaoSelecionada = 1;
              });
            },
          ),
          BotaoResposta(
            texto: opcoes[0],
            isSelected: opcaoSelecionada == 0,
            grupo: 1,
            pontuacao: 0,
            onTap: () {
              setState(() {
                opcaoSelecionada = 0;
              });
            },
          ),
          SizedBox(height: altura > 800 ? 30 : 5),
          Botaopadrao(
            texto: widget.perguntaFinal ? 'FINALIZAR' : 'PRÓXIMO',
            onPressed: opcaoSelecionada == null
                ? () {}
                : () {
                    widget.onResponder(opcaoSelecionada!, context);
                    setState(() {
                      opcaoSelecionada = null;
                    });
                  },
          ),
          if (widget.questaoAtual > 0) ...{
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: widget.finalizar,
                      child: Text('Finalizar'),
                    ),
                    TextButton(
                      onPressed: widget.anterior,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back),
                          SizedBox(width: 10),
                          Text('Anterior', style: TextStyle(fontSize: 17)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          } else ...{
            SizedBox(height: 50),
          },
          SizedBox(height: altura > 800 ? altura * 0.05 : altura * 0.02),
        ],
      ),
    );
  }
}
