import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PopupShare extends StatelessWidget {
  final String titulo;
  final String mensagem;
  final VoidCallback onShare;

  const PopupShare({
    super.key,
    required this.titulo,
    required this.mensagem,
    required this.onShare,
  });

  static void mostrar({
    required BuildContext context,
    required String titulo,
    required String mensagem,
    required VoidCallback onShare,
  }) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return PopupShare(titulo: titulo, mensagem: mensagem, onShare: onShare);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      constraints: BoxConstraints(
        maxHeight: altura * 0.35,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            titulo,
            maxLines: 1,
            minFontSize: 10,
            maxFontSize: 100,
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Text(
            mensagem,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: altura * 0.03),
          ElevatedButton.icon(
            onPressed: onShare,
            label: Text(
              "Compartilhar",
              style: TextStyle(fontSize: 18),
            ),
            icon: Icon(
              Icons.share,
              size: 20,
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff6da4fd),
                foregroundColor: Colors.white),
          ),
          SizedBox(height: altura * 0.01),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Agora não")),
        ],
      ),
    );
  }
}
