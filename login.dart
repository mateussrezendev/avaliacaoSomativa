import 'package:avaliacaosomativappdm/principal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:avaliacaosomativappdm/Usuario.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormLogin(),
      ),
    );

  }
}
class FormLogin extends StatelessWidget{
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _loginController = TextEditingController();

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.indigoAccent,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _loginController,
                decoration: InputDecoration(
                    labelText: 'Login',
                    prefixIcon: Icon(Icons.login),
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed:(){
                Usuario user = new Usuario();
                user.nome = _nomeController.text;
                user.login = _loginController.text;
                print("nome " + user.nome);
                print("login " + user.login);
              } ,
              child: const Text('Entrar'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  textStyle: TextStyle(color:Colors.white, fontSize: 14),
                  padding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  minimumSize: Size(180, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.push( // Navega para a Tela2
                context,
                    MaterialPageRoute(builder: (context) => Principal()),
                );} ,

                 child: const Text('+ novo'),
              style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.lightGreen,
                  textStyle: TextStyle(color:Colors.white, fontSize: 14),
                  padding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  minimumSize: Size(180, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }



}