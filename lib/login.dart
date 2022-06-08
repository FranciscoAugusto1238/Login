import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/cadastrar.dart';
import 'package:login/esqueceu.dart';
import 'package:login/splash.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  String user = '';
  String senha = '';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Economiza Formiga",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 50)),

              //colocar imagens
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/formiga.jpg', width: 300, height: 200),
                ],
              ),

              TextField(
                  onChanged: (text) {
                    user = text;
                  },
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "usuário",
                    labelStyle: TextStyle(color: Colors.white),
                  )), //TextField
              Divider(),
              TextField(
                  onChanged: (number) {
                    senha = number;
                  },
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Senha do usuário",
                    labelStyle: TextStyle(color: Colors.white),
                  )),
              Divider(),
              Divider(),
              Divider(),

              ButtonTheme(
                height: 20.0,
                highlightColor: Colors.red,
                splashColor: Colors.black38,
                child: RaisedButton(
                  onPressed: () => {
                    if (user == 'admin' && senha == '1234')
                      {
                        print('acessando'),
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Splash()),
                        )
                      }
                    else
                      {
                        print('login inválido'),
                      }
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "ENTRAR",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.red.shade900,
                ),
              ),

              //Botao Direcionando para pagina de se inscrever
              ButtonTheme(
                height: 20.0,
                highlightColor: Colors.red,
                splashColor: Colors.black38,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Cadastrar()),
                    ),
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text(
                    "Cadastre-se",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.red.shade900,
                ),
              ),

              //Botao esqueceu a senha
              ButtonTheme(
                highlightColor: Colors.red,
                splashColor: Colors.black38,
                height: 20.0,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Esqueceu()),
                    ),
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  child: Text(
                    "Esqueceu a senha ?",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
