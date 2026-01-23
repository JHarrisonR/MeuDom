import 'package:flutter/material.dart';
import 'package:meudom/screens/inicial1.dart';
import 'package:meudom/screens/como_funciona.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:meudom/screens/questoes.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final PageController _controller = PageController();

  void irParaProximaPagina() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void voltarPagina() {
    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void irParaPerguntas(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Questoes()),
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
              Inicial1(nextpage: irParaProximaPagina),
              ComoFunciona(voltar: voltarPagina),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.05,
                ),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
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
        ],
      ),
    );
  }
}
