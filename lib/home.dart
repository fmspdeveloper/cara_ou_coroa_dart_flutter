import 'package:cara_ou_coroa/paginaJogo.dart';
import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  void _navegarJogo() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => paginaJogo()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      color: Color(0xFF61bd8c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/logo.png"),
          GestureDetector(
            onTap: _navegarJogo,
            child: Image.asset("images/botao_jogar.png"),
          )
        ],
      ),
    ));
  }
}
