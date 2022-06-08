import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/splash.dart';


class Cadastrar extends StatefulWidget {
  @override
  _CadastrarState createState() => _CadastrarState();
}
class _CadastrarState extends State<Cadastrar> {
  @override

  String email= '';
  String senha= '';

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

                TextField(

                    style: TextStyle(color: Colors.white, fontSize: 50),
                    decoration: InputDecoration(

                      labelText:"Criar Conta",

                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),

                TextField(
                    onChanged: (text){
                      email = text;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText:"Email:",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),
                TextField(
                    onChanged: (number){
                      senha = number;
                    },
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText:"Senha:",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),
                Divider(),




                ButtonTheme(
                  highlightColor: Colors.red ,
                  splashColor: Colors.black38,
                  height: 20.0,
                  child: RaisedButton(
                    onPressed: () => {
                      if(email == '' && senha == ''){
                        print('Cadastro não realizado'),
                        print('Digite os campos Email e Senha'),

                      }else{
                        print('Cadastro Realizado'),
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()),
                        )
                      }
                    },
                    shape: new RoundedRectangleBorder(borderRadius:
                    new BorderRadius.circular(20.0)),
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color:Colors.red.shade900,
                  ),
                ),

                //Botão Voltar
                ButtonTheme(
                  highlightColor: Colors.red ,
                  splashColor: Colors.black38,
                  height: 20.0,
                  child: RaisedButton(
                    onPressed: () => {
                      if(email == '' && senha == ''){
                      Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Login()),
                      )
                      }else{

                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()),
                        )
                      }
                    },
                    shape: new RoundedRectangleBorder(borderRadius:
                    new BorderRadius.circular(30.0)),
                    child: Text(
                      "Voltar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color:Colors.red.shade900,
                  ),
                ),



              ],
            ),
          ),
        )
    );
  }
}