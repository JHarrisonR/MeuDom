import 'package:flutter/material.dart';

class Barraprogresso extends StatelessWidget {
  final int valorMaximo;
  final int valor;
  final Color cor;
  final VoidCallback onPause;

  const Barraprogresso({
    super.key,
    this.valorMaximo = 106,
    required this.valor,
    this.cor = const Color(0xFFF79F30),
    required this.onPause,
  });

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return SizedBox(
      width: altura > 800 ? 350 : 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: altura > 800 ? 280 : 230,
                height: 20,
                child: Stack(
                  children: [
                    Container(
                      height: 15,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: (valor / valorMaximo).clamp(0.0, 1.0),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 15,
                        decoration: BoxDecoration(
                          color: cor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: onPause,
                child: Icon(
                  Icons.pause,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: altura > 800 ? 350 : 300,
                child: Text(
                  'Questão ${valor + 1} de $valorMaximo',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
