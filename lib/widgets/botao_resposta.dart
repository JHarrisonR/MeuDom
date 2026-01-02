import 'package:flutter/material.dart';

class BotaoResposta extends StatelessWidget {
  final String texto;
  final bool isSelected;
  final int grupo;
  final int pontuacao;
  final VoidCallback onTap;

  const BotaoResposta({
    super.key,
    required this.texto,
    required this.isSelected,
    required this.grupo,
    required this.pontuacao,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return Column(
      children: [
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor: isSelected ? Color(0xFFF79F30) : Colors.white,
              foregroundColor: isSelected ? Colors.white : Colors.black,
              minimumSize: Size(300, altura > 800 ? 60 : 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color:
                          isSelected ? Color(0xFFF79F30) : Colors.grey.shade300,
                      width: 2))),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Icon(
                  isSelected ? Icons.check_circle : Icons.radio_button_off,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              Text(texto),
            ],
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
