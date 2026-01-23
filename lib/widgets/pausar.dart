import 'package:flutter/material.dart';
import 'package:meudom/data/dom_enum.dart';
import 'package:meudom/screens/inicio.dart';
import 'package:meudom/services/progresso_service.dart';
import 'package:meudom/widgets/alert_dialog.dart';

class Pausar {
  static Future<void> mostrar({
    required BuildContext context,
    required int questaoAtual,
    required Map<Dom, int> pontuacao,
  }) async {
    final confirmar = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Alerta(
          titulo: "Pausar questionário?",
          texto: "Seu progresso será salvo e você poderá continuar depois.",
          negativo: "Cancelar",
          positivo: "Pausar",
        );
      },
    );

    if (confirmar == true) {
      await ProgressoService.pausar(
        questaoAtual: questaoAtual,
        pontuacao: pontuacao,
      );
    }

    if (context.mounted && confirmar == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Center(
            child: Text(
              'Seu progresso foi salvo com sucesso!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Inicio()),
      );
    }
  }
}
