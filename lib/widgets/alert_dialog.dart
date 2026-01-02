import 'package:flutter/material.dart';

class Alerta extends StatelessWidget {
  final String titulo;
  final String texto;
  final String negativo;
  final String positivo;

  const Alerta(
      {super.key,
      required this.titulo,
      required this.texto,
      required this.negativo,
      required this.positivo});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Center(child: Text(titulo)),
      content: Text(texto),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(negativo)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff6da4fd)),
            onPressed: () => Navigator.pop(context, true),
            child: Text(
              positivo,
              style: TextStyle(
                color: Theme.of(context).colorScheme.surface,
              ),
            )),
      ],
    );
  }
}
