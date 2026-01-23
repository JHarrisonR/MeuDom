import 'package:flutter/material.dart';
import 'package:meudom/components/pergunta.dart';
import 'package:meudom/components/respostas.dart';
import 'package:meudom/data/dom_enum.dart';
import 'package:meudom/data/perguntas_data.dart';
import 'package:meudom/screens/finalizado.dart';
import 'package:meudom/services/progresso_service.dart';
import 'package:meudom/widgets/barra_progresso.dart';
import 'package:meudom/widgets/pausar.dart';

class Questoes extends StatefulWidget {
  const Questoes({super.key});

  @override
  State<Questoes> createState() => _PerguntasState();
}

class _PerguntasState extends State<Questoes> {
  @override
  void initState() {
    super.initState();
    carregarProgresso();
  }

  int questaoAtual = 0;
  bool perguntaFinal = false;

  Map<Dom, int> pontosPorDom = {
    Dom.ensino: 0,
    Dom.exortacao: 0,
    Dom.lideranca: 0,
    Dom.ministerio: 0,
    Dom.profecia: 0,
    Dom.repartir: 0,
    Dom.servico: 0,
    Dom.administracao: 0,
    Dom.evangelismo: 0,
    Dom.intercessao: 0,
    Dom.hospitalidade: 0,
    Dom.ajudaESocorro: 0,
    Dom.pastorear: 0,
  };

  void registrarResposta(int pontos, BuildContext context) {
    final pergunta = perguntasData[questaoAtual];
    final dom = pergunta.dom;
    setState(() {
      pontosPorDom[dom] = pontosPorDom[dom]! + pontos;
    });
    if (questaoAtual < perguntasData.length - 1) {
      proximaQuestao();
    } else {
      irParaFinalizado(context);
    }
  }

  void irParaFinalizado(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Finalizado(pontuacao: pontosPorDom),
      ),
    );
  }

  void proximaQuestao() {
    setState(() {
      if (questaoAtual < perguntasData.length - 1) {
        questaoAtual++;
      } else {
        perguntaFinal = true;
      }
    });
  }

  void questaoAnterior() {
    setState(() {
      if (questaoAtual > 0) {
        questaoAtual--;
        perguntaFinal = false;
      }
    });
  }

  void finalizarQuestionario() {
    setState(() {
      questaoAtual = 104;
    });
  }

  Future<void> pausarQuestionario(BuildContext context) async {
    await Pausar.mostrar(
      context: context,
      questaoAtual: questaoAtual,
      pontuacao: pontosPorDom,
    );
  }

  Future<void> carregarProgresso() async {
    final progresso = await ProgressoService.carregar();

    if (progresso != null) {
      setState(() {
        questaoAtual = progresso.questaoAtual;
        pontosPorDom = progresso.pontuacao;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.error,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 12),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Barraprogresso(
                valor: questaoAtual,
                onPause: () => pausarQuestionario(context),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.04),

            SizedBox(
              height: altura * 0.25,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: Pergunta(questaoAtual: questaoAtual),
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.width * 0.04),

            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final borderRadius = constraints.maxWidth * 0.08;

                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(borderRadius),
                              topRight: Radius.circular(borderRadius),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * 0.04,
                          vertical: constraints.maxHeight * 0.02,
                        ),
                        child: Respostas(
                          perguntaFinal: perguntaFinal,
                          questaoAtual: questaoAtual,
                          onResponder: registrarResposta,
                          anterior: questaoAnterior,
                          finalizar: finalizarQuestionario,
                          pontuacao: pontosPorDom,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
