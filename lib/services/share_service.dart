import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class ShareService {
  static Future<void> compartilharResultado({
    required String domPrincipal,
  }) async {
    try {
      // Verificar se o asset existe
      final byteData = await rootBundle.load('assets/Share.png');
      final bytes = byteData.buffer.asUint8List();

      print('Asset carregado: ${bytes.length} bytes'); // Debug

      // Opção 1: Usar XFile.fromData (mais simples)
      final params = ShareParams(
        text: _mensagemResultado(domPrincipal),
        files: [
          XFile.fromData(bytes, name: 'icone.png', mimeType: 'image/png'),
        ],
      );

      final result = await SharePlus.instance.share(params);

      if (result.status == ShareResultStatus.success) {
        print('Compartilhado com sucesso!');
      }
    } catch (e) {
      print('Erro ao compartilhar: $e');

      // Fallback: compartilhar só o texto
      final params = ShareParams(text: _mensagemResultado(domPrincipal));
      await SharePlus.instance.share(params);
    }
  }

  static String _mensagemResultado(String domPrincipal) {
    return '✨ Meu dom principal é ${domPrincipal.toUpperCase()}!\n Descubra o seu também com o app MeuDom. \n https://bit.ly/MeuDomApp';
  }
}
