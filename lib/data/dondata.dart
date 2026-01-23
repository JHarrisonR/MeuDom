import 'package:meudom/data/dom_enum.dart';

class DomData {
  final String nome;
  final String titulo;
  final String descricao;
  final String comoUsar;
  final String atencao;
  final String imagen;

  const DomData({
    required this.nome,
    required this.titulo,
    required this.descricao,
    required this.comoUsar,
    required this.atencao,
    required this.imagen,
  });
}

class DonsData {
  static final Map<Dom, DomData> dons = {
    Dom.ensino: DomData(
      nome: 'ensino',
      titulo: 'ENSINO',
      descricao:
          'Você possui uma facilidade especial para compreender, organizar e transmitir verdades de forma clara. Pessoas com o dom de ensino gostam de aprender, estudar e explicar, tornando assuntos complexos mais simples e acessíveis. Esse dom não se resume a falar bem, mas a gerar entendimento. Quem ensina ajuda outros a crescerem espiritualmente, firmando bases sólidas de fé, conhecimento e discernimento.',
      comoUsar:
          '''• Aprofundando-se na Palavra e ajudando outros a compreendê-la. \n • Ensinando em classes, grupos pequenos, discipulados ou estudos bíblicos. \n • Orientando pessoas com paciência, clareza e responsabilidade. \n • Combatendo confusão espiritual com verdade e equilíbrio.''',
      atencao:
          'O dom de ensino floresce quando vem acompanhado de humildade. Ensinar não é se colocar acima, mas servir com conhecimento.',
      imagen: 'assets/images/dons/1_ensino.svg',
    ),
    Dom.exortacao: DomData(
      nome: 'exortacao',
      titulo: 'EXORTAÇÃO',
      descricao:
          'Você tem uma capacidade especial de encorajar, motivar e despertar pessoas para agir. Quem possui esse dom costuma perceber rapidamente quando alguém está desanimado, perdido ou precisando de direção. A exortação não é cobrança dura, mas chamado ao crescimento, trazendo ânimo, esperança e correção com amor. Sua presença tende a levantar pessoas e lembrá-las do propósito de Deus para suas vidas.',
      comoUsar:
          '''• Aconselhando e encorajando pessoas em momentos difíceis. \n • Ajudando outros a não desistirem da fé ou do chamado. \n • Chamando à responsabilidade com graça e verdade. \n • Inspirando atitudes práticas de mudança e maturidade espiritual''',
      atencao:
          'O dom de exortação precisa ser guiado pelo amor. Palavras fortes sem empatia podem ferir, mas palavras certas no tempo certo transformam vidas.',
      imagen: 'assets/images/dons/2_exortacao.svg',
    ),
    Dom.lideranca: DomData(
      nome: 'lideranca',
      titulo: 'LIDERANÇA',
      descricao:
          'Você possui habilidade natural para influenciar, organizar e direcionar pessoas em direção a um objetivo comum. Pessoas com esse dom enxergam o todo, tomam decisões e assumem responsabilidade. Liderar, no contexto do Reino, não é dominar, mas servir conduzindo. Esse dom permite que visões se tornem ações e que pessoas caminhem juntas com propósito e ordem.',
      comoUsar:
          '''• Coordenando ministérios, equipes ou projetos. \n • Ajudando pessoas a descobrirem e usarem seus dons. \n • Tomando decisões com sabedoria e responsabilidade. \n • Criando ambientes saudáveis, organizados e frutíferos.''',
      atencao:
          'Liderança sem submissão a Deus vira controle. Liderança saudável inspira pelo exemplo, não pela imposição.',
      imagen: 'assets/images/dons/3_lideranca.svg',
    ),
    Dom.ministerio: DomData(
      nome: 'ministerio',
      titulo: 'MINISTÉRIO',
      descricao:
          'Você demonstra uma inclinação especial para servir de forma prática e constante. O dom de ministério se revela na disposição em fazer o que precisa ser feito, muitas vezes longe dos holofotes, mas com grande impacto no Reino.Pessoas com esse dom percebem necessidades com facilidade e se sentem realizadas ao ajudar na organização, no cuidado e no suporte às atividades da igreja e da comunidade.',
      comoUsar:
          '''• Apoiando ministérios e líderes de forma fiel e dedicada. \n • Servindo em tarefas práticas que mantêm a obra funcionando. \n • Cuidando de pessoas e ambientes com zelo e responsabilidade. \n • Demonstrando o amor de Deus por meio de atitudes concretas.''',
      atencao:
          'Servir não significa se anular. É importante equilibrar dedicação com descanso e reconhecer o valor do seu papel.',
      imagen: 'assets/images/dons/4_ministerio.svg',
    ),
    Dom.profecia: DomData(
      nome: 'profecia',
      titulo: 'PROFECIA',
      descricao:
          'Você possui sensibilidade para discernir a verdade e confrontar situações à luz da vontade de Deus. O dom de profecia se manifesta no compromisso com a justiça, a retidão e a fidelidade à Palavra. Quem possui esse dom costuma perceber quando algo está fora do propósito e sente o chamado de falar com clareza, mesmo quando a mensagem é desafiadora.',
      comoUsar:
          '''• Exortando com verdade e responsabilidade espiritual \n • Defendendo princípios bíblicos com coragem e sabedoria \n • Ajudando pessoas a alinhar suas atitudes com a vontade de Deus \n • Discernindo tempos, decisões e direções espirituais''',
      atencao:
          'A verdade precisa caminhar junto com o amor. O dom de profecia edifica quando é exercido com humildade e graça.',
      imagen: 'assets/images/dons/5_profecia.svg',
    ),
    Dom.repartir: DomData(
      nome: 'repartir',
      titulo: 'REPARTIR',
      descricao:
          'Você demonstra generosidade natural e alegria em compartilhar recursos, tempo e bens. O dom de repartir vai além de doar; ele envolve sensibilidade para suprir necessidades com sinceridade e coração aberto. Pessoas com esse dom não veem o que possuem como algo apenas seu, mas como instrumento para abençoar outros e promover justiça e cuidado.',
      comoUsar:
          '''• Contribuindo com alegria e propósito. \n • Ajudando pessoas e projetos que enfrentam necessidades reais. \n • Incentivando uma cultura de generosidade e confiança em Deus. \n • Usando recursos de forma consciente e estratégica.''',
      atencao:
          'Repartir deve ser guiado por discernimento. Generosidade saudável caminha junto com sabedoria.',
      imagen: 'assets/images/dons/6_repartir.svg',
    ),
    Dom.servico: DomData(
      nome: 'servico',
      titulo: 'SERVIÇO',
      descricao:
          'Você possui disposição constante para ajudar, apoiar e cuidar, mesmo em tarefas simples. O dom de serviço se manifesta na prontidão em agir e na sensibilidade às necessidades do dia a dia. Quem serve com esse dom demonstra o amor de Deus de forma prática, muitas vezes sem precisar de palavras. Pessoas com esse dom encontram alegria em contribuir para o bem-estar dos outros e para o funcionamento da comunidade.',
      comoUsar:
          '''• Ajudando pessoas em necessidades práticas. \n • Servindo com alegria em diferentes áreas. \n • Sustentando o funcionamento da comunidade. \n • Demonstrando humildade e amor em ações cotidianas.''',
      atencao:
          ' Servir não é se sobrecarregar. Aprender a dizer “não” também faz parte de um serviço saudável. ',
      imagen: 'assets/images/dons/7_servico.svg',
    ),
    Dom.administracao: DomData(
      nome: 'administracao',
      titulo: 'ADMINISTRAÇÃO',
      descricao:
          'Você tem facilidade para organizar, planejar e estruturar pessoas, recursos e processos. O dom de administração permite que visões se tornem realidade por meio da ordem, da clareza e da boa gestão. Pessoas com esse dom trazem equilíbrio e eficiência, ajudando o Reino a crescer de forma sustentável e organizada.',
      comoUsar:
          '''• Organizando projetos, ministérios e equipes. \n • Cuidando bem de recursos financeiros e materiais. \n • Criando processos que facilitem o trabalho de outros. \n • Garantindo clareza, ordem e responsabilidade.''',
      atencao:
          'Organização deve servir às pessoas, não o contrário. Flexibilidade também é uma virtude.',
      imagen: 'assets/images/dons/8_administracao.svg',
    ),
    Dom.evangelismo: DomData(
      nome: 'evangelismo',
      titulo: 'EVANGELISMO',
      descricao:
          'Você sente um chamado especial para compartilhar a fé e alcançar pessoas. O dom de evangelismo se manifesta no desejo de anunciar o amor de Deus e conduzir outros a um relacionamento com Ele. Quem possui esse dom costuma ter facilidade para se conectar com pessoas, comunicar a mensagem de forma clara e gerar impacto espiritual.',
      comoUsar:
          '• Compartilhando sua fé com naturalidade e amor. \n • Alcançando pessoas fora do ambiente da igreja. \n • Apoiando ações missionárias e evangelísticas. \n • Inspirando outros a também viverem uma fé ativa.',
      atencao:
          'Evangelizar não é pressionar. A verdadeira mensagem deve ser recebida com respeito e liberdade. Evangelizar é mais do que falar — é viver uma vida que reflita a mensagem anunciada.',
      imagen: 'assets/images/dons/9_evangelismo.svg',
    ),
    Dom.intercessao: DomData(
      nome: 'intercessao',
      titulo: 'INTERCESSÃO',
      descricao:
          'Você possui sensibilidade espiritual e perseverança para orar em favor de outras pessoas. O dom de intercessão se manifesta no desejo constante de buscar a Deus, muitas vezes carregando no coração necessidades que vão além das suas próprias. Pessoas com esse dom entendem o valor da oração como instrumento de transformação e permanecem firmes mesmo quando os resultados não são imediatos.',
      comoUsar:
          '• Orando regularmente por pessoas, famílias e ministérios. \n • Sustentando espiritualmente líderes e projetos. \n • Discernindo necessidades espirituais por meio da oração.\n • Criando ambientes de comunhão e dependência de Deus.',
      atencao:
          'Interceder não significa carregar pesos sozinho. Compartilhar pedidos e descansar em Deus é parte de uma vida de oração saudável.',
      imagen: 'assets/images/dons/10_intercesao.svg',
    ),
    Dom.hospitalidade: DomData(
      nome: 'hospitalidade',
      titulo: 'HOSPITALIDADE',
      descricao:
          'Você possui sensibilidade espiritual e perseverança para orar em favor de outras pessoas. O dom de intercessão se manifesta no desejo constante de buscar a Deus, muitas vezes carregando no coração necessidades que vão além das suas próprias. Pessoas com esse dom entendem o valor da oração como instrumento de transformação e permanecem firmes mesmo quando os resultados não são imediatos.',
      comoUsar:
          '• Recebendo pessoas com amor e respeito. \n • Criando ambientes acolhedores para comunhão. \n • Cuidando para que ninguém se sinta excluído. \n • Demonstrando o amor de Deus por meio do acolhimento.',
      atencao:
          'A hospitalidade deve ser feita com sinceridade, sem expectativas ou pressões. A verdadeira hospitalidade é um gesto de amor que reflete a bondade de Deus.',
      imagen: 'assets/images/dons/11_hospitalidade.svg',
    ),
    Dom.ajudaESocorro: DomData(
      nome: 'ajudaSocorro',
      titulo: 'AJUDA E SOCORRO',
      descricao:
          'Você possui sensibilidade para agir rapidamente diante do sofrimento alheio. O dom de ajuda ou socorro se manifesta na prontidão em apoiar pessoas em momentos de dor, crise ou necessidade urgente. Quem possui esse dom não ignora a dor do outro e se coloca à disposição para aliviar cargas, oferecendo suporte prático e emocional.',
      comoUsar:
          '• Ajudando pessoas em situações difíceis ou emergenciais \n • Oferecendo apoio prático e emocional \n • Sendo presença constante em momentos de crise \n • Demonstrando compaixão com atitudes concretas',
      atencao:
          'Ajudar não significa assumir responsabilidades que não são suas. Estabelecer limites protege tanto quem ajuda quanto quem é ajudado.',
      imagen: 'assets/images/dons/12_ajudasocorro.svg',
    ),
    Dom.pastorear: DomData(
      nome: 'pastorear',
      titulo: 'PASTOREAR',
      descricao:
          'Você demonstra cuidado contínuo e responsabilidade pelas pessoas ao seu redor. O dom de pastorear se expressa no desejo de acompanhar, orientar e proteger, caminhando junto nos processos da vida. Pessoas com esse dom se importam com o crescimento espiritual, emocional e relacional dos outros, oferecendo apoio constante e direção segura.',
      comoUsar:
          '• Acompanhando pessoas em sua caminhada de fé. \n • Cuidando de grupos pequenos ou discipulados \n• Orientando com amor, paciência e firmeza \n• Promovendo ambientes de cuidado e crescimento \n',
      atencao:
          'pastorear não é controlar. O verdadeiro cuidado conduz à maturidade e à liberdade em Deus.',
      imagen: 'assets/images/dons/13_pastor.svg',
    ),
  };
}
