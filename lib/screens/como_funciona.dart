import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComoFunciona extends StatefulWidget {
  final VoidCallback voltar;

  const ComoFunciona({super.key, required this.voltar});

  @override
  State<ComoFunciona> createState() => _ComoFuncionaState();
}

class _ComoFuncionaState extends State<ComoFunciona> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/como_funciona.svg',
                width: altura > 800 ? altura * 0.42 : altura * 0.45,
              ),
            ],
          ),
        ),
        TextButton.icon(
          onPressed: widget.voltar,
          icon: Icon(
            Icons.arrow_back,
          ),
          label: Text(
            "Voltar",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
