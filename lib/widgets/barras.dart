import 'package:flutter/material.dart';
import 'package:meudomapp/data/dom_enum.dart';
import 'package:meudomapp/screens/final.dart';
import '/widgets/barra.dart';

class Barras extends StatelessWidget {
  final List<DomPontuacao> ranking;

  const Barras({super.key, required this.ranking});

  Widget _colunaBarras(List<DomPontuacao> lista) {
    return Column(
      children: List.generate(lista.length, (index) {
        final item = lista[index];
        return Barra(
          titulo: item.dom.label,
          valor: item.pontos.toDouble(),
          valorMaximo: item.pontos.toDouble() > 24
              ? item.pontos.toDouble()
              : 24,
          cor: index == 0 ? const Color(0xFFF79F30) : Color(0xFF6DA4FD),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      child: Column(children: [_colunaBarras(ranking)]),
    );
  }
}
