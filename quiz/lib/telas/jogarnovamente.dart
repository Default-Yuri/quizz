import 'package:flutter/material.dart';
import 'quiz.dart';



class jogarnovamente extends StatefulWidget {
  final int acertos;
  final int erros;

  const jogarnovamente({Key? key, required this.acertos, required this.erros})
      : super(key: key);

  @override
  State<jogarnovamente> createState() => _jogarnovamenteState();
}


class _jogarnovamenteState extends State<jogarnovamente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 247, 238, 187),
              Color.fromRGBO(4, 160, 43, 1),
            ],
          ),
        ),
        child: Stack(
          // Usar Stack para sobrepor elementos
          children: [
            Positioned(
              // Para posicionar a primeira imagem no canto superior esquerdo
              left: -163, // Alinhar à esquerda
              top: -147, // Alinhar ao topo
              child: Image.asset('assets/linha1.png'),
            ),
            Positioned(
              // Para posicionar a primeira imagem no canto superior esquerdo
              right: -175, // Alinhar à direita
              bottom: -122, // Alinhar ao topo
              child: Image.asset('imagens/linha2.png'),
            ),
            Positioned(
              // Para posicionar a primeira imagem no canto superior esquerdo
              right: -85, // Alinhar à direita
              top: -123, // Alinhar ao topo
              child: Image.asset('imagens/sacidireita.png'),
            ),
            Positioned(
              // Para posicionar a primeira imagem no canto superior esquerdo
              left: -174, // Alinhar à esquerda
              bottom: -100, // Alinhar ao topo
              child: Image.asset('assets/imagens/saciesquerda.png'),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Acertos: ${widget.acertos}",
                      style: TextStyle(fontSize: 20)),
                  Text("Erros: ${widget.erros}", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
