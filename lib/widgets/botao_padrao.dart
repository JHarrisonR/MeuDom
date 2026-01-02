import 'package:flutter/material.dart';

class Botaopadrao extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  final IconData icone;
  final Color? cor;

  const Botaopadrao({
    super.key,
    required this.texto,
    required this.onPressed,
    this.icone = Icons.arrow_forward,
    this.cor,
  });

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final Color corFinal = cor ?? Theme.of(context).colorScheme.secondary;

    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        backgroundColor: corFinal,
        foregroundColor: Color(0xFFFFFFFF),
        minimumSize: Size(300, altura > 800 ? 55 : 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: corFinal,
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(texto, style: TextStyle(fontSize: 16)),
          SizedBox(width: 10),
          Icon(icone)
        ],
      ),
    );
  }
}
