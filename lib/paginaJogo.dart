import 'package:flutter/material.dart';
import 'dart:math';

class paginaJogo extends StatelessWidget {
  const paginaJogo({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int resultado = random.nextInt(2);
    AssetImage imagem;
    if (resultado == 0) {
      imagem = AssetImage("images/moeda_cara.png");
    } else {
      imagem = AssetImage("images/moeda_coroa.png");
    }

    void _navegarInicio() {
      Navigator.pushNamed(context, "/home");
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("cara ou coroa"),
        backgroundColor: Color(0xFF44a270),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF61bd8c),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image(image: imagem),
            GestureDetector(
              onTap: _navegarInicio,
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
