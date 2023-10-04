import 'home.dart';
import 'package:cara_ou_coroa/paginaJogo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/home": (context) => TelaInicio(),
      "/jogo": (context) => paginaJogo(),
    },
    home: TelaInicio(),
  ));
}
