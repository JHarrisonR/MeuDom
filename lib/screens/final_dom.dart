import 'package:flutter/material.dart';
import 'package:meudom/data/dom_enum.dart';
import 'package:meudom/data/dondata.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FinalDom extends StatelessWidget {
  final Dom dom;

  const FinalDom({super.key, required this.dom});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final DomData? domData = DonsData.dons[dom];

    if (domData == null) {
      return const Scaffold(body: Center(child: Text('Dom não encontrado')));
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  domData.imagen,
                  width: altura > 800 ? 200 : 150,
                ),
                SizedBox(height: 20),
                Text(
                  domData.titulo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ((24 - (domData.titulo.length / 40)) * 1.2),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 350,
                  child: Column(
                    children: [
                      Text(
                        domData.descricao,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          height: 1.3,
                          fontWeight: FontWeight.w300,
                          fontSize:
                              ((24 - (domData.descricao.length / 40)) + 3),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Como usar esse dom no Reino:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        domData.comoUsar,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          height: 1.3,
                          fontWeight: FontWeight.w300,
                          fontSize:
                              ((24 - (domData.descricao.length / 40)) + 3),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'ATENÇÃO!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        domData.atencao,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          height: 1.3,
                          fontWeight: FontWeight.w300,
                          fontSize:
                              ((24 - (domData.descricao.length / 40)) + 3),
                        ),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
