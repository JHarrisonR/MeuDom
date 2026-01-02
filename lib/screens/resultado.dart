import 'package:flutter/material.dart';
import 'package:meudomapp/data/dom_enum.dart';
import 'package:meudomapp/screens/final.dart';
import 'package:meudomapp/services/progresso_service.dart';
import 'package:meudomapp/services/share_service.dart';
import 'package:meudomapp/widgets/alert_dialog.dart';
import 'package:meudomapp/widgets/botao_padrao.dart';
import 'package:meudomapp/widgets/popup_share.dart';
import '/widgets/barras.dart';
import 'package:meudomapp/screens/inicio.dart';

class Resultado extends StatefulWidget {
  final List<DomPontuacao> ranking;
  final VoidCallback nextPage;

  const Resultado({super.key, required this.ranking, required this.nextPage});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  late Map<Dom, int> pontuacao = Map.fromEntries(
    widget.ranking.map((d) => MapEntry(d.dom, d.pontos)),
  );

  @override
  void initState() {
    super.initState();
    pontuacao = Map.fromEntries(
      widget.ranking.map((d) => MapEntry(d.dom, d.pontos)),
    );
    ProgressoService.pausar(questaoAtual: 105, pontuacao: pontuacao);
  }

  void _abrirPopupShare() {
    final Dom domPrincipal = widget.ranking
        .reduce((a, b) => a.pontos > b.pontos ? a : b)
        .dom;

    PopupShare.mostrar(
      context: context,
      titulo: "Deseja compartilhar seu resultado?",
      mensagem:
          "Compartilhe seu dom e ajude outras pessoas a descobrirem o delas.",
      onShare: () async {
        await ShareService.compartilharResultado(
          domPrincipal: domPrincipal.label,
        );
        Navigator.pop(context);
      },
    );
  }

  void irParaInicio(BuildContext context) {
    ProgressoService.limpar();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Inicio()));
  }

  @override
  Widget build(BuildContext context) {
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Seu dom mais forte é:",
                  style: TextStyle(fontSize: alturaTela * 0.025),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: larguraTela * 0.08),
                    Text(
                      widget.ranking[0].dom.label.toUpperCase(),
                      style: TextStyle(
                        fontSize: larguraTela * 0.07,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    TextButton(
                      onPressed: _abrirPopupShare,
                      child: Icon(Icons.share, size: 25),
                    ),
                  ],
                ),
                SizedBox(height: alturaTela * 0.03),
                Barras(ranking: widget.ranking),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Botaopadrao(
                        texto: "Conheça seus dons",
                        onPressed: widget.nextPage,
                      ),
                      SizedBox(height: 10),
                      TextButton.icon(
                        onPressed: () async {
                          final confirmado = await showDialog<bool>(
                            context: context,
                            builder: (context) => Alerta(
                              titulo: "Recomeçar?",
                              texto: "Seu progresso atual será perdido.",
                              negativo: "Cancelar",
                              positivo: "Recomeçar",
                            ),
                          );
                          if (confirmado == true && context.mounted) {
                            irParaInicio(context);
                          }
                        },
                        label: Text(
                          "Recomeçar ",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 17,
                          ),
                        ),
                        icon: Icon(
                          Icons.replay_rounded,
                          size: 28,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
