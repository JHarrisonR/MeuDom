import 'package:meudomapp/data/dom_enum.dart';

class ProgressoSalvo {
  final int questaoAtual;
  final Map<Dom, int> pontuacao;

  ProgressoSalvo({required this.questaoAtual, required this.pontuacao});
}
