import 'dart:convert';
import 'package:meudom/data/dom_enum.dart';
import 'package:meudom/model/progresso_salvo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProgressoService {
  static const _keyQuestao = 'questao_atual';
  static const _keyPontuacao = 'pontuacao';

  static final SharedPreferencesAsync _prefs = SharedPreferencesAsync();

  /// Salva o progresso atual
  static Future<void> pausar({
    required int questaoAtual,
    required Map<Dom, int> pontuacao,
  }) async {
    final Map<String, int> mapaSerializavel = {
      for (final entry in pontuacao.entries) entry.key.name: entry.value,
    };

    await _prefs.setInt(_keyQuestao, questaoAtual);
    await _prefs.setString(_keyPontuacao, jsonEncode(mapaSerializavel));
  }

  static Future<ProgressoSalvo?> carregar() async {
    final int? questao = await _prefs.getInt(_keyQuestao);
    final String? pontuacaoJson = await _prefs.getString(_keyPontuacao);

    if (questao == null || pontuacaoJson == null) {
      return null;
    }

    final Map<String, dynamic> mapa = jsonDecode(pontuacaoJson);

    final Map<Dom, int> pontuacao = {
      for (final entry in mapa.entries)
        Dom.values.firstWhere((e) => e.name == entry.key): entry.value as int,
    };

    return ProgressoSalvo(questaoAtual: questao, pontuacao: pontuacao);
  }

  static Future<void> limpar() async {
    await _prefs.remove(_keyQuestao);
    await _prefs.remove(_keyPontuacao);
  }
}
