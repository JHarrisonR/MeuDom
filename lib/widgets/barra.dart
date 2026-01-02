import 'package:flutter/material.dart';

class Barra extends StatelessWidget {
  final String titulo;
  final double valorMaximo;
  final double valor;
  final Color cor;

  const Barra({
    super.key,
    required this.titulo,
    this.valorMaximo = 24,
    required this.valor,
    this.cor = const Color(0xFF6DA4FD),
  });

  @override
  Widget build(BuildContext context) {
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;
    final orientacao = MediaQuery.of(context).orientation;
    final isHorizontal = orientacao == Orientation.landscape;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo.toUpperCase(),
          textAlign: TextAlign.left,
          style:
              TextStyle(fontSize: 13, fontWeight: FontWeight.bold, height: 0.5),
        ),
        SizedBox.shrink(),
        Row(children: [
          Expanded(
            child: Stack(children: [
              Container(
                width: isHorizontal ? larguraTela * 0.7 : larguraTela * 0.8,
                height: isHorizontal ? alturaTela * 0.035 : alturaTela * 0.015,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onError,
                    borderRadius: BorderRadius.circular(15)),
              ),
              FractionallySizedBox(
                widthFactor: valor / valorMaximo,
                child: Container(
                  height:
                      isHorizontal ? alturaTela * 0.035 : alturaTela * 0.015,
                  decoration: BoxDecoration(
                    color: cor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(width: larguraTela * 0.02),
          Text('$valor'.replaceAll('.0', ''),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              )),
        ]),
        SizedBox(height: 15),
      ],
    );
  }
}
