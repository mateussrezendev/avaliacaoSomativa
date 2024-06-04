import 'package:avaliacaosomativappdm/login.dart';
import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter

class SplashScreen extends StatelessWidget { // Classe SplashScreen que herda de StatelessWidget
  const SplashScreen({super.key}); // Construtor constante para SplashScreen

  @override
  Widget build(BuildContext context) { // Método build que retorna o widget da tela SplashScreen
    return Scaffold( // Scaffold: Widget responsável por criar um layout "padrão" para a tela
      appBar: AppBar( // AppBar: Barra localizada na parte superior da tela
        title: const Text('Health Green'), // Título da AppBar
        centerTitle: true, // Centraliza o título na AppBar
        backgroundColor: Colors.lightGreenAccent, // Cor de fundo da AppBar
      ),
      body: Center( // Center: Widget que centraliza o conteúdo na tela
        child: ElevatedButton( // Botão elevado que leva para a Tela2
          child: const Text('Entrar'), // Texto exibido no botão
          onPressed: () { // Ação ao pressionar o botão
            Navigator.push( // Navega para a Tela2
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
      ),
    );
  }
}
