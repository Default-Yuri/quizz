import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntanumero = 0;

  List<Map<String, dynamic>> quiz = [
    {
      "Pergunta":
          "Por que o Saci tem só uma perna? De acordo com a lenda contada pela Chiara Conte o Saci foi escravizado e teve sua perna presa para não fugir.",
      "Imagem": "assets/imagens/saci.jpg",
      "Respostas": ["Verdadeiro", "Falso"],
      "certo": 1,
    },
    {
      "Pergunta":
          "A mula sem cabeça é um fantasma de uma mulher que foi amaldiçoada por ter se entregado com um padre condenada a se transformar em uma mula que tem fogo ao invés de uma cabeça",
      "Imagem": "assets/imagens/Mula_sem_cabeça.jpeg",
      "Respostas": ["Verdadeiro", "Falso"],
      "certo": 1,
    },
    {
      "Pergunta":
          "Segundo a lenda, lara era uma grande guerreira índia que, além de ter muita coragem, esbanjava uma beleza indescritível e foi por causa de sua beleza que seus invejosos irmãos decidiram matá-la e sumir com o corpo. Entretanto, por causa de suas habilidades de luta, lara conseguiu vencer a luta e matar seus irmãos.",
      "Imagem": "assets/imagens/Sereia_Iara.jpeg",
      "Respostas": ["Verdadeiro", "Falso"],
      "certo": 1,
    },
    {
      "Pergunta":
          "A cada mil anos, não surge uma nova Cuca, que assumiria o lugar da antiga, que, por sua vez, se transformaria em um pássaro de canto triste.",
      "Imagem": "assets/imagens/Cuca.jpeg",
      "Respostas": ["Verdadeiro", "Falso"],
      "certo": 1,
    },
    {
      "Pergunta":
          "Seus pés são virados para trás, o que confunde os caçadores, fazendo com que se percam nas matas. Surge e desaparece de repente. Qual é o personagem?",
      "Imagem": "assets/imagens/Curupira.jpeg",
      "Respostas": ["BoiTata", "Curupira"],
      "certo": 1,
    },
    {
      "Pergunta": "Qual desses seres não faz parte do folclore brasileiro?",
      "Imagem": "assets/imagens/Cobra.jpeg",
      "Respostas": ["Cabra", "Cobra de fogo"],
      "certo": 1,
    },
    {
      "Pergunta":
          "Qual é o nome da sereia que também é conhecida como mãe D'Água?",
      "Imagem": "assets/imagens/Sereia_Iara.jpeg",
      "Respostas": ["Iara", "Naia"],
      "certo": 1,
    },
    {
      "Pergunta":
          "Qual desses não é conhecido por ser um protetor da fauna e flora brasileira?",
      "Imagem": "assets/imagens/Mula_sem_cabeça.jpeg",
      "Respostas": ["Curupira", "Mula"],
      "certo": 1,
    },
    {
      "Pergunta":
          "Ser que habita as florestas e gosta de raptar crianças desobedientes. Quem for pego pela é usado como ingrediente para as refeições da criatura maléfica. Qual desses não é conhecido por ser um protetor da fauna e flora brasileira?",
      "Imagem": "assets/imagens/Cuca.jpeg",
      "Respostas": ["Barba Ruiva", "Cuca"],
      "certo": 1,
    },
  ];

  void responder(int resposta) {
    if (perguntanumero < quiz.length - 1) {
      setState(() {
        perguntanumero++;
      });
    } else {
      // Exibiu todas as perguntas, you can add the result logic here.
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> perguntaAtual = quiz[perguntanumero];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromRGBO(53, 154, 58, 1),
                Color.fromARGB(255, 181, 54, 54),
              ], // Cores do gradiente
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Pergunta ${perguntanumero + 1} de ${quiz.length}',
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      /*border: Border.all(
                          color: Colors.black, width: 2.0),*/ // Configura a borda
                      borderRadius: BorderRadius.circular(
                          12.0), // Opcional: arredonda a borda
                    ),
                    child: Image.asset(
                      perguntaAtual['Imagem'],
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Text(
                    perguntaAtual['Pergunta'],
                    style: const TextStyle(
                      fontSize: 15, // Tamanho da fonte
                      fontWeight: FontWeight.bold, // Negrito
                      color: Color.fromARGB(
                          255, 255, 255, 255), // Espaçamento entre letras
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      responder(1); // Add logic to handle the response here
                    },
                    child: Text(
                      perguntaAtual['Respostas'][0],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(53, 154, 58, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(222, 255, 255, 255),
                      minimumSize: const Size(200, 50),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      responder(2); // Add logic to handle the response here
                    },
                    child: Text(
                      perguntaAtual['Respostas'][1],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(53, 154, 58, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(221, 255, 255, 255),
                      minimumSize: const Size(200, 50),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
