import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meudom/data/dom_enum.dart';
import 'package:meudom/screens/final.dart';
import 'package:meudom/widgets/botao_padrao.dart';

class Finalizado extends StatelessWidget {
  final Map<Dom, int> pontuacao;
  const Finalizado({super.key, required this.pontuacao});

  void irParaResultados(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Final(pontuacao: pontuacao)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              'assets/images/bau.svg',
              width: altura > 800 ? 200 : 150,
            ),
            SizedBox(height: 30),
            Text(
              "Você completou o questionário! ".toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.9,
              ),
            ),
            Text(
              'Avance para ver o resultado e descubra qual é o seu dom mais forte, baseado nas suas respostas.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 80),
            Botaopadrao(
              texto: 'Ver resultado',
              onPressed: () {
                irParaResultados(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
