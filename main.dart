import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'splashscreen.dart'; // Importando o arquivo Tela1.dart
//import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { // Classe MyApp que herda de StatelessWidget
  const MyApp({super.key}); // Construtor constante para MyApp

  @override
  Widget build(BuildContext context) { // Método build que retorna o widget principal do app
    return MaterialApp( // MaterialApp: Widget que define as configurações gerais do app
      debugShowCheckedModeBanner: false, // Desativa o banner de debug no canto superior direito
      home: SplashScreen(), // Define a tela inicial como Tela1
    );
  }
}
