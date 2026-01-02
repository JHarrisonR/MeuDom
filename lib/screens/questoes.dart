import 'package:flutter/material.dart';
import 'package:meudomapp/components/pergunta.dart';
import 'package:meudomapp/components/respostas.dart';
import 'package:meudomapp/data/dom_enum.dart';
import 'package:meudomapp/data/perguntas_data.dart';
import 'package:meudomapp/screens/finalizado.dart';
import 'package:meudomapp/services/progresso_service.dart';
import 'package:meudomapp/widgets/barra_progresso.dart';
import 'package:meudomapp/widgets/pausar.dart';

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
    var alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.error,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: alturaTela > 800 ? alturaTela * 0.05 : alturaTela * 0.02,
          ),
          Barraprogresso(
            valor: questaoAtual,
            onPause: () => pausarQuestionario(context),
          ),
          Pergunta(questaoAtual: questaoAtual),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: alturaTela > 800
                    ? alturaTela * 0.57
                    : alturaTela * 0.55,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
              ),
              Respostas(
                perguntaFinal: perguntaFinal,
                questaoAtual: questaoAtual,
                onResponder: registrarResposta,
                anterior: questaoAnterior,
                finalizar: finalizarQuestionario,
                pontuacao: pontosPorDom,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
