enum Dom {
  ensino,
  exortacao,
  lideranca,
  ministerio,
  profecia,
  repartir,
  servico,
  administracao,
  evangelismo,
  intercessao,
  hospitalidade,
  ajudaESocorro,
  pastorear,
}

extension DomExtension on Dom {
  String get label {
    switch (this) {
      case Dom.ensino:
        return 'Ensino';
      case Dom.exortacao:
        return 'Exortação';
      case Dom.lideranca:
        return 'Liderança';
      case Dom.ministerio:
        return 'Ministério';
      case Dom.profecia:
        return 'Profecia';
      case Dom.repartir:
        return 'Repartir';
      case Dom.servico:
        return 'Serviço';
      case Dom.administracao:
        return 'Administração';
      case Dom.evangelismo:
        return 'Evangelismo';
      case Dom.intercessao:
        return 'Intercessão';
      case Dom.hospitalidade:
        return 'Hospitalidade';
      case Dom.ajudaESocorro:
        return 'Ajuda e Socorro';
      case Dom.pastorear:
        return 'Pastorear';
    }
  }
}
