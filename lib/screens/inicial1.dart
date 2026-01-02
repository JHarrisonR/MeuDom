import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meudomapp/screens/questoes.dart';
import 'package:meudomapp/services/progresso_service.dart';
import 'package:meudomapp/widgets/botao_padrao.dart';

class Inicial1 extends StatefulWidget {
  final VoidCallback nextpage;

  const Inicial1({super.key, required this.nextpage});

  @override
  State<Inicial1> createState() => _Inicial1State();
}

class _Inicial1State extends State<Inicial1> {
  bool temProgresso = false;
  @override
  void initState() {
    super.initState();
    verificarProgresso();
  }

  Future<void> verificarProgresso() async {
    final progresso = await ProgressoService.carregar();

    setState(() {
      temProgresso = progresso != null;
    });
  }

  void irParaPerguntas(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Questoes()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: altura > 800 ? altura * 0.051 : altura * 0.021),
            SizedBox(
              child: SvgPicture.asset(
                'assets/images/inicial_1.svg',
                height: altura * 0.20,
              ),
            ),
            SizedBox(height: altura > 800 ? altura * 0.05 : altura * 0.02),
            Column(
              children: [
                AutoSizeText(
                  'TODOS TÊM DONS',
                  maxLines: 1,
                  minFontSize: altura > 800 ? 20 : 18,
                  style: TextStyle(
                    color: Color(0xFF6DA4FD),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                AutoSizeText(
                  'Deus capacitou cada pessoa de forma única. No MeuDom, você responde perguntas rápidas sobre situações do dia a dia cristão e descobre quais são os seus dons espirituais e como usá-los para servir a Deus e à sua comunidade.',
                  maxLines: 6,
                  minFontSize: 10,
                  maxFontSize: altura > 800 ? 100 : 90,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: altura > 800 ? 100 : 90),
                ),
              ],
            ),
            SizedBox(height: altura > 800 ? altura * 0.15 : altura * 0.05),
            Column(
              children: [
                TextButton.icon(
                  onPressed: widget.nextpage,
                  label: Text(
                    "Saiba como funciona",
                    style: TextStyle(fontSize: 17),
                  ),
                  icon: Icon(Icons.lightbulb_outline_rounded, size: 28),
                ),
                SizedBox(height: 10),
                Botaopadrao(
                  texto: "Iniciar",
                  onPressed: () async {
                    await ProgressoService.limpar();
                    irParaPerguntas(context);
                  },
                ),
                if (temProgresso) ...[
                  SizedBox(height: 10),
                  Botaopadrao(
                    texto: "Continuar",
                    onPressed: () {
                      verificarProgresso();
                      irParaPerguntas(context);
                    },
                  ),
                ] else ...{
                  SizedBox(height: 10),
                  Botaopadrao(
                    texto: "Continuar",
                    cor: Colors.grey,
                    onPressed: () {},
                  ),
                },
              ],
            ),
          ],
        ),
      ),
    );
  }
}
