import 'package:flutter/material.dart';
import 'quiz.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TelaInicioState createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(53, 154, 58, 1),
              Color.fromRGBO(181, 54, 54, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                    'assets/imagens/telainicio.png'), // Substitua pelo caminho correto da sua imagem
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            const Quiz()), // Substitua "Quiz" pelo nome da sua outra tela
                  );
                },
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                      'assets/imagens/bot.png'), // Substitua pelo caminho correto da sua outra imagem
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
