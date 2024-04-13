import 'package:flutter/material.dart';
import 'app/pages/home.dart';

void main() {
  runApp(Guia());
}

class Guia extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home':(context) => Home()
      },
      initialRoute: '/home', // Definindo a rota inicial
    );
  }
}


