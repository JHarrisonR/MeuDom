import 'package:meudom/data/dom_enum.dart';

class PerguntaData {
  final String texto;
  final Dom dom;

  const PerguntaData({required this.texto, required this.dom});
}

const List<PerguntaData> perguntasData = [
  PerguntaData(
    // pergunta 01
    texto:
        'Gosto de esclarecer o significado de palavras em uma passagem bíblica, ou em um estudo sobre um tema bíblico',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 02
    texto:
        'Quando estou com alguém que passa por problemas, minha tendência é receitar alguns passos específicos que ele deve tomar para chegar a uma solução cristã do problema.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 03
    texto:
        'Tenho facilidade em persuadir outros a cooperarem comigo e me seguirem para realizar um trabalho para o Senhor que eu idealizei.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 04
    texto:
        'Evito tomar uma posição firme com alguém, a não ser quando tenho certeza que firmeza é a única maneira de ajudá-lo.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 05
    texto:
        'Eu costumo falar a verdade mesmo que os sentimentos de outros sofram em consequência.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 06
    texto:
        'Estou tão confiante que Deus suprirá as minhas necessidades, que tenho o hábito de dar meus bens a Ele (e ao trabalho dEle) sacrificialmente.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 07
    texto:
        'Eu me envolvo tanto, ajudando outras pessoas, que meu próprio trabalho sofre, e a minha família também.',
    dom: Dom.servico,
  ),
  PerguntaData(
    // pergunta 08
    texto:
        'Sinto-me realizado ao ver todas as coisas de um programa ou projeto que planejei (ou ajudei a planejar) se encaixando direitinho, tudo saindo bem, e outros ficando satisfeitos com os resultados.',
    dom: Dom.administracao,
  ),
  PerguntaData(
    // pergunta 09
    texto:
        'Quando alguém toma decisão por Cristo na igreja, quero logo chegar para conversar, para ter certeza que o indivíduo entendeu o evangelho, e que realmente deu seu coração a Jesus.',
    dom: Dom.evangelismo,
  ),
  PerguntaData(
    // pergunta 10
    texto:
        'Oração tem sido uma das minhas experiências espirituais prediletas.',
    dom: Dom.intercessao,
  ),
  PerguntaData(
    // pergunta 11
    texto:
        'Costumo procurar os visitantes na igreja, fazendo o máximo para que estes se sintam muito à vontade e bem-vindos em nosso meio.',
    dom: Dom.hospitalidade,
  ),
  PerguntaData(
    // pergunta 12
    texto:
        'Quando fico sabendo de um orfanato onde há necessidade de agasalhos, ou de quem faça consertos caseiros ou de quem conte historinhas para as crianças, sendo coisa que eu saiba fazer, tenho muita satisfação em suprir aquelas necessidades.',
    dom: Dom.ajudaESocorro,
  ),
  PerguntaData(
    // pergunta 13
    texto:
        'Cristões passando por dificuldades ou dúvidas espirituais costumam me procurar para eu orar com eles, e ajudá-los a descobrir na Bíblia palavras de Deus relevantes à sua situação.',
    dom: Dom.pastorear,
  ), /////////////////////////////////////////////////////////

  PerguntaData(
    // pergunta 14
    texto:
        'Para poder transmitir verdades eficientemente procuro oportunidades para aperfeiçoar meus conhecimentos ou aprender novos e melhores métodos.',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 15
    texto: 'Sou levado a animar e estimular a fé dos outros.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 16
    texto:
        'Gosto (ou gostaria) de guiar, inspirar e motivar outros a se envolverem no trabalho de Deus.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 17
    texto:
        'Na igreja, prefiro que haja um espírito fraternal e uma aceitação de pessoas como são, em vez de uma orientação que toma posições inflexíveis, posições que marginalizam, dentro da igreja aqueles que discordam ou aqueles que não chegaram ainda a um certo grau de maturidade cristã.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 18
    texto:
        'Quando falo as verdades de Deus, pública ou particularmente, quero ver os ouvintes tomando uma decisão positiva, logo a seguir, em referência à verdade que proclamei.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 19
    texto:
        'Tenho experiência de contribuir para um trabalho de Deus, e descobrir que Ele me usou como canal para responder a uma oração específica.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 20
    texto:
        'Estou disposto, quando possível, a usar meu tempo, meus recursos financeiros ou bens (carros, aparelhos, etc) para dar andamento num trabalho do Senhor, para evitar atrasos administrativos ou burocráticos.',
    dom: Dom.servico,
  ),
  PerguntaData(
    // pergunta 21
    texto:
        'Estou pronto a trabalhar em equipe com alguém que tem a função de líder ajudando-o com minha capacidade para organizar, sem me importar se alguém saiba que as idéias e planos foram meus.',
    dom: Dom.administracao,
  ),
  PerguntaData(
    // pergunta 22
    texto:
        'Tenho alegria em comunicar a mensagem de salvação em Cristo, falando ou cantando, aonde eu puder.',
    dom: Dom.evangelismo,
  ),
  PerguntaData(
    // pergunta 23
    texto:
        'Oro fielmente por alguns que estão no serviço de Deus de tempo parcial ou integral, porque reconheço que a eficácia do ministério deles, depende da intercessão.',
    dom: Dom.intercessao,
  ),
  PerguntaData(
    // pergunta 24
    texto:
        'Oferecer refeição e/ou hospedagem é um ministério para mim, e sou muito grato a Deus sempre que tenho este privilégio.',
    dom: Dom.hospitalidade,
  ),
  PerguntaData(
    // pergunta 25
    texto:
        'Gosto (ou gostaria) de ajudar um líder cristão assumindo uma ou outras das responsabilidades dele, assim, o líder fica menos sobrecarregado e poderá realizar suas responsabilidades exercendo seus dons espirituais.',
    dom: Dom.ajudaESocorro,
  ),
  PerguntaData(
    // pergunta 26
    texto:
        'Quando vejo membros da igreja se esfriando e/ou se ausentando, minha tendência é logo procurá-los, amigavelmente, para atraí-los de volta e assegurar que seja fornecido aquilo que faltava para ele.',
    dom: Dom.pastorear,
  ),

  //////////////////////////////////////////////////////////
  PerguntaData(
    // pergunta 27
    texto:
        'Quando comunico as verdades de Deus, com frequência há resultados diretos na vida dos outros: em compreensão, atitudes, alteração de prioridades e/ou comportamento, crescimento espiritual.',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 28
    texto:
        'Quando falo a uma grupo ou a indivíduos, presto atenção para notar quem está vibrando com a apresentação do assunto.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 29
    texto:
        'Num grupo onde não há um líder indicado, tento assumir essa liderança sem perder muito tempo.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 30
    texto: 'Sou capaz de discernir motivos sinceros em outras pessoas.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 31
    texto:
        'Tenho proclamado a verdade de Deus - particular ou publicamente - de uma maneira tal que, às vezes, a liderança tradicional de meu grupo (igreja, denominação ou outro) ficou irritada comigo.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 32
    texto:
        'Alegremente aceito e mantenho um padrão de vida abaixo das minhas possibilidades, para poder repartir o máximo na obra de Deus.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 33
    texto:
        'Não sou capaz de dizer "não" quando alguém pede que faça alguma coisa.',
    dom: Dom.servico,
  ),
  PerguntaData(
    // pergunta 34
    texto:
        'Sei delegar responsabilidades, pois reconheço que atividades ou tarefas podem e devem ser delegadas e quais devem ficar sob minha responsabilidade.',
    dom: Dom.administracao,
  ),
  PerguntaData(
    // pergunta 35
    texto:
        'Tenho uma certa percepção que me dá a entender quando alguém está aberto, pronto para ouvir o evangelho e aceitar Cristo como Senhor e Salvador.',
    dom: Dom.evangelismo,
  ),
  PerguntaData(
    // pergunta 36
    texto:
        'Tenho alegria em sentir que faço parte como colaborador, no ministério dos servos de Deus, a favor dos quais oro diligentemente.',
    dom: Dom.intercessao,
  ),
  PerguntaData(
    // pergunta 37
    texto:
        'Posso oferecer um refúgio agradável para hóspedes, sem interferir com a rotina necessária da minha família.',
    dom: Dom.hospitalidade,
  ),
  PerguntaData(
    // pergunta 38
    texto:
        'Gosto de fazer coisas, mesmo simples, para outros se sentirem valorizados, se sentirem acolhidos e amados.',
    dom: Dom.ajudaESocorro,
  ),
  PerguntaData(
    // pergunta 39
    texto:
        'Quando me relaciono com um grupo de cristãos como líder espiritual, faço tudo para conhecer cada um muito bem, e procuro ser bem conhecido por eles.',
    dom: Dom.pastorear,
  ),

  /////////////////////////////////////////////////////////
  PerguntaData(
    // pergunta 40
    texto:
        'Gosto de estudos detalhados, e de estudar detalhadamente alguma faceta da verdade de Deus',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 41
    texto:
        'Gosto de trabalhar com outras pessoas, ajudando-as a se unirem harmoniosamente para realizar algum objetivo no trabalho de Deus.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 42
    texto:
        'Gosto de ajudar alguém ansioso de seguir um plano de ação para resolver um problema, ou atingir um alvo.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 43
    texto:
        'Minha tendência é procurar apagar as mágoas que outros sentem, e ser um instrumento de Deus para sarar enfermidades espirituais e emocionais.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 44
    texto:
        'Sinto a necessidade de, pessoalmente reprovar a maldade, a proclamar a vontade de Deus no caso.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 45
    texto:
        'Sinto-me realizado quando contribuo financeiramente para um trabalho evangelístico, pois entendo que eu, pessoalmente, faço parte da equipe realizando aquele ministério de ensino no corpo de Cristo (missões entre os índios, recuperação de viciados em drogas, o cuidado de órfãos, etc',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 46
    texto:
        'Na igreja gosto de ser chamado para me responsabilizar por uma tarefa que entendo, ficando com a iniciativa de realizar do meu jeito.',
    dom: Dom.servico,
  ),
  PerguntaData(
    // pergunta 47
    texto:
        'Num grupo mal estruturado, vejo facilmente como as coisas poderiam ser organizadas para ganhar tempo e ter bom êxito.',
    dom: Dom.administracao,
  ),
  PerguntaData(
    // pergunta 48
    texto:
        'Tenho sido usado por Deus para levar outros a tomarem uma decisão por Cristo, recebendo a salvação nEle, e mais tarde saber que fizeram profissão de fé.',
    dom: Dom.evangelismo,
  ),
  PerguntaData(
    // pergunta 49
    texto:
        'Tenho orado bastante e Deus tem respondido as minhas petições específicas a favor de outras pessoas.',
    dom: Dom.intercessao,
  ),
  PerguntaData(
    // pergunta 50
    texto:
        'Quando alguém se hospeda no meu lar, não me preocupo muito com a arrumação da casa e nem com o cardápio, mas sim, em apreciar o privilégio de ter gente comigo.',
    dom: Dom.hospitalidade,
  ),
  PerguntaData(
    // pergunta 51
    texto:
        'Gosto de fazer serviços na igreja que deixam os outros satisfeitos e despreocupados (arrumar a sala, boletins preparados, conserto rede elétrica, etc.',
    dom: Dom.ajudaESocorro,
  ),
  PerguntaData(
    // pergunta 52
    texto:
        'Quando tenho responsabilidade pelo bem espiritual de uma ou mais pessoas, estou disposto a corrigi-las amável e humildemente (às vezes severamente) para seu máximo bem, mesmo arriscando não ser bem compreendido ou bem aceito na hora.',
    dom: Dom.pastorear,
  ),

  ////////////////////////////////////////////////////////////
  PerguntaData(
    // pergunta 53
    texto:
        'Quero ter oportunidades frequentes para compartilhar aquilo que estou aprendendo da palavra de Deus.',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 54
    texto:
        'Procuro manter contatos para incentivar os outros no seu crescimento espiritual.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 55
    texto:
        'Sinto-me a vontade em presidir reuniões ou grupos, e se eu consigo conduzir os participantes num ambiente fraternal, de tal forma que, em geral mantenham em vista os alvos a serem atingidos.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 56
    texto:
        'Posso me compadecer dos sentimentos daquele que passa por infortúnio, espontaneamente oferecer conforto prático.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 57
    texto:
        'Na minha opinião, abrir concessões, dentro daquilo que se crê ser certo ou errado é quase sempre um erro; vejo as coisas em preto e branco, raramente em meio termo.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 58
    texto:
        'Procuro contribuir para o trabalho do Senhor sem aqueles ao meu redor tomarem conhecimento.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 59
    texto:
        'Quando vejo alguém precisando de algo que tenho condições de fazer ou de dar, minha tendência é me oferecer de imediato.',
    dom: Dom.servico,
  ),
  PerguntaData(
    // pergunta 60
    texto:
        'Aguardo nos bastidores até alguém na direção me entregar a responsabilidade de fazer ou organizar os planos de um projeto.',
    dom: Dom.administracao,
  ),
  PerguntaData(
    // pergunta 61
    texto:
        'Gosto tanto de compartilhar o evangelho com não crentes, e contá-los de minha experiência com Cristo, que faço isto espontaneamente no ônibus, no serviço, em visitas de casa em casa, etc. e com meu coração transbordando de alegria.',
    dom: Dom.evangelismo,
  ),
  PerguntaData(
    // pergunta 62
    texto:
        'Levo muito a sério os pedidos de oração que vem ao meu conhecimento.',
    dom: Dom.intercessao,
  ),
  PerguntaData(
    // pergunta 63
    texto:
        'Tenho interesses nos cristãos que estão longe de seus familiares e quero que estes sintam que meu lar e minha família são deles.',
    dom: Dom.hospitalidade,
  ),
  PerguntaData(
    // pergunta 64
    texto:
        'Gosto de ajudar os outros com suas tarefas, uma vez que eu tenha experiência em fazer aquilo, ou receba orientação.',
    dom: Dom.ajudaESocorro,
  ),
  PerguntaData(
    // pergunta 65
    texto:
        'Gosto de me relacionar com um ou mais novo convertido, discipulando-os para ajudá-los a caminhar, a crescer na fé, dar apoio, ir atrás deles se eles desviarem do caminho e/ou se ausentarem da comunhão de outros cristãos.',
    dom: Dom.pastorear,
  ),

  ///////////////////////////////////////////////////////////
  PerguntaData(
    // pergunta 66
    texto:
        'Quando falo de uma verdade de Deus, minha tendência é ir além e mostrar aos outros que essa é uma verdade que funciona na prática.',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 67
    texto:
        'Acho que vale a pena compartilhar minhas experiências como Jesus me exortou, me corrigiu, me abençoou, para ajudar a animar e incentivar alguém que passa por problemas ou situações semelhantes a minha.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 68
    texto:
        'Tenho boa experiência em persuadir outros a se encaminharem juntamente comigo para alcançar objetivos cristãos, tais como: aprender a viver o amor cirstão de verdade; exercer seus dons espirituais; estabelecer e manter um trabalho beneficente para pobres.Etc.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 69
    texto:
        'Eu me sinto mal quando alguém fala ou faz alguma coisa que fere um outro emocionalmente.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 70
    texto: 'Sou persuasivo falando com outras pessoas.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 71
    texto:
        'Procuro cuidar muito bem do dinheiro em minhas mãos para poder dar liberal e generosamente ao trabalho de Deus.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 72
    texto:
        'É fácil eu me lembrar das preferências (Os "eu gosto" e os "eu não gosto") das pessoas do meu círculo de relacionamento.',
    dom: Dom.servico,
  ),
  PerguntaData(
    // pergunta 73
    texto:
        'Gosto de bolar planos detalhados para meu grupo realizar objetivos, dando oportunidade para o exercício de talentos e dons espirituais. Planejo a sequência do que precisa ser feito, acompanhando o uso de recursos materiais e tempo disponível junto com a realização dos planos.',
    dom: Dom.administracao,
  ),
  PerguntaData(
    // pergunta 74
    texto:
        'Quando falo de Cristo com alguém, não estou satisfeito em parar ali, mas quero conduzir esta pessoa aos pés de Cristo e vê-la arrebanhada com outras ovelhas, sendo alimentada numa igreja.',
    dom: Dom.evangelismo,
  ),
  PerguntaData(
    // pergunta 75
    texto:
        'Identifico-me com os irmãos que sofrem perseguição pela fé, procuro ficar a par da situação deles para orar inteligentemente e com frequência a favor deles e a favor de seus perseguidores.',
    dom: Dom.intercessao,
  ),
  PerguntaData(
    // pergunta 76
    texto:
        'Eu me sentiria participante do ministério de evangelização, abrindo meu lar para um irmão, guiado por Deus, e dirigindo estudos bíblicos para gente interessada no evangelho.',
    dom: Dom.hospitalidade,
  ),
  PerguntaData(
    // pergunta 77
    texto:
        'Tenho vontade de facilitar as coisas para irmãos fracos (seja fisicamente, espiritualmente, etc.), especialmente para eles poderem participar de alguma maneira no corpo de Cristo, exercendo seus dons espirituais e sentindo-se úteis e felizes.',
    dom: Dom.ajudaESocorro,
  ),
  PerguntaData(
    // pergunta 78
    texto:
        'Tem sido agradável para mim ter a responsabilidade de promover o bem espiritual de um grupo de cristãos.',
    dom: Dom.pastorear,
  ),

  ////////////////////////////////////////////////////////////
  PerguntaData(
    // pergunta 79
    texto:
        'Tenho a tendência de questionar ou querer testar aquilo que outros me ensinam, e com o qual não concordo.',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 80
    texto:
        'Gosto de falar e me relacionar um a um com as pessoas mais do que falar para grupos.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 81
    texto:
        'Para eu ter condições de ir à frente, guiando as ovelhas do Senhor em seus caminhos, estou disposto a me submeter ao Espírito Santo, custe o que custar, para que Ele transforme continuamente o meu ser e a minha imagem de Cristo.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 82
    texto:
        'Quando, durante o culto, o ambiente não emana uma verdadeira comunhão entre os irmãos ou quando há um ambiente receptivo, eu posso perceber isto rapidamente.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 83
    texto:
        'Sinto-me impelido a falar aquilo que penso sobre as coisas de Deus.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 84
    texto:
        'Tenho facilidade em reconhecer necessidades financeiras no trabalho de Deus, que os outros demoram para enxergar ou nunca percebem.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 85
    texto:
        'Sinto-me frustrado quando uma tarefa tem de ser completada até certa hora ou data.',
    dom: Dom.servico,
  ),
  ////////////////////////////////////////////////////////////////////
  PerguntaData(
    // pergunta 86
    texto:
        'Gosto de pesquisar detalhes de um assunto, e não apenas estudá-lo por alto.',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 87
    texto:
        'Tenho experiência feliz em ajudar outros que têm problemas pessoais.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 88
    texto:
        'Tenho influenciado outros a participarem em conjunto de determinada tarefa, ou em prosseguir em direção a um alvo ou objetivo cristão, vendo bons resultados posteriormente.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 89
    texto:
        'Gosto (ou gostaria) de fazer visitas em hospitais, em orfanatos ou lares para velhos, ou talvez em presídios; penso que tenho algo a oferecer nesse tipo de ministério.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 90
    texto:
        'Sou visto, às vezes, como pessoa antipática na igreja ou comunidades, porque fico preocupado com os erros dos outros e falo logo.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 91
    texto:
        'Tenho satisfação em motivar outros a contribuírem para o trabalho do Senhor.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 92
    texto:
        'Quando aquilo que faço, procurando suprir uma necessidade, não é apreciado, sinto-me decepcionado.',
    dom: Dom.servico,
  ), ////////////////////////////////////////////////////////////////
  PerguntaData(
    // pergunta 93
    texto: 'Sou motivado a explicar verdades bíblicas.',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 94
    texto:
        'Creio que o testemunho de uma vida verdadeiramente cristã fala alto, senão mais alto, do que o testemunho verbal.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 95
    texto:
        'Gosto de completar cada tarefa ou trabalho o mais rapidamente possível.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 96
    texto:
        'Posso me aproximar e me identificar com aqueles que estão passando por problemas espirituais e/ou emocionais.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 97
    texto:
        'Gosto mais de falar as verdades de Deus a grupos do que a indivíduos.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 98
    texto:
        'Tenho a capacidade de fazer compras e investimentos de maneira sábia e equilibrada.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 99
    texto: 'Sou uma pessoa que facilmente sente afeição genuína pelos outros.',
    dom: Dom.servico,
  ),
  //////////////////////////////////////////////////////////////////////////
  PerguntaData(
    // pergunta 100
    texto:
        'Gosto de separar um tempo considerável para aprender a me aprofundar em verdades bíblicas, para comunicá-las aos outros.',
    dom: Dom.ensino,
  ),
  PerguntaData(
    // pergunta 101
    texto:
        'Sinto-me frustrado quando aquele que me ensina a palavra de Deus deixa de indicar alguns passos que se devem seguir para aplicar aquela verdade na vida da gente.',
    dom: Dom.exortacao,
  ),
  PerguntaData(
    // pergunta 102
    texto:
        'Gosto de achar e aceitar um novo desafio quando um trabalho bem sucedido meu se encerra ou é confiado a outros capacitados.',
    dom: Dom.lideranca,
  ),
  PerguntaData(
    // pergunta 103
    texto: 'Minha tendência é me fechar às pessoas insensíveis ou insinceras.',
    dom: Dom.ministerio,
  ),
  PerguntaData(
    // pergunta 104
    texto:
        'Tenho a tendência de ser brusco demais quando eu me expresso aos outros.',
    dom: Dom.profecia,
  ),
  PerguntaData(
    // pergunta 105
    texto:
        'Parece que tenho facilidade em adquirir ou ganhar dinheiro, e ao mesmo tempo, tenho uma forte atração pela obra de Deus, onde há necessidades financeiras que posso suprir.',
    dom: Dom.repartir,
  ),
  PerguntaData(
    // pergunta 106
    texto:
        'Posso gastar horas fazendo alguma coisa que beneficie direta e imediatamente aos outros, sem me preocupar com o cansaço.',
    dom: Dom.servico,
  ),
];
