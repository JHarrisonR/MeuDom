import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meudomapp/data/dom_enum.dart';
import 'package:meudomapp/screens/final_dom.dart';
import 'package:meudomapp/screens/resultado.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Final extends StatefulWidget {
  final Map<Dom, int> pontuacao;
  const Final({super.key, required this.pontuacao});

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  final PageController _controller = PageController();

  late final List<DomPontuacao> ranking;

  @override
  void initState() {
    super.initState();

    ranking = widget.pontuacao.entries
        .map((e) => DomPontuacao(e.key, e.value))
        .toList();

    ranking.sort((a, b) => b.pontos.compareTo(a.pontos));
  }

  void irParaProximaPagina() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Resultado(ranking: ranking, nextPage: irParaProximaPagina),
              FinalDom(dom: ranking[0].dom),
              FinalDom(dom: ranking[1].dom),
              FinalDom(dom: ranking[2].dom),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 20,
                      dotColor: Color(0xFFCED4E3),
                      activeDotColor: Color(0xFFF79F30),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DomPontuacao {
  final Dom dom;
  final int pontos;

  DomPontuacao(this.dom, this.pontos);
}
