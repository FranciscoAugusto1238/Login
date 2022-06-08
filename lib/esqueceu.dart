import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/recupera.dart';
import 'package:login/splash.dart';


class Esqueceu extends StatefulWidget {
  @override
  _EsqueceuState createState() => _EsqueceuState();
}
class _EsqueceuState extends State<Esqueceu> {
  @override

  String email= '';

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

                Text(
                    "Esqueceu a senha ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 70)
                ),

                TextField(
                    onChanged: (text){
                      email = text;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Email:",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),
                ButtonTheme(
                  highlightColor: Colors.red ,
                  splashColor: Colors.black38,
                  height: 30.0,
                  child: RaisedButton(
                    onPressed: () => {
                      if(email == '' ){
                        print('Codigo nao enviado'),
                        print('Digite o campos Email '),

                      }else{
                        print('Codigo enviado a seu email'),
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Recupera()),
                        )
                      }
                    },
                    shape: new RoundedRectangleBorder(borderRadius:
                    new BorderRadius.circular(30.0)),
                    child: Text(
                      "Enviar Codigo",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    color:Colors.red.shade900,
                  ),
                ),

                //Botão Voltar
                ButtonTheme(
                  highlightColor: Colors.red ,
                  splashColor: Colors.black38,
                  height: 30.0,
                  child: RaisedButton(
                    onPressed: () => {
                      if(email == ''){
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
                      style: TextStyle(color: Colors.white, fontSize: 30),
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