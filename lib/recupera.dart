import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/splash.dart';


class Recupera extends StatefulWidget {
  @override
  _RecuperaState createState() => _RecuperaState();
}
class _RecuperaState extends State<Recupera> {
  @override

  String codigo= '';
  String senha1= '';
  String senha2= '';

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
                    "Digite o codigo de verificaão",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 50)
                ),
                Divider(),

                TextField(
                    onChanged: (number){
                      codigo = number;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText:"Codigo:",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),
                TextField(
                    onChanged: (number){
                     senha1 = number;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText:"Digite a nova senha",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),
                TextField(
                    onChanged: (number){
                      senha2 = number;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText:"Redigite a nova senha",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),
                ButtonTheme(
                  height: 20.0,
                  highlightColor: Colors.red ,
                  splashColor: Colors.black38,
                  child: RaisedButton(
                    onPressed: () => {
                      if(senha1 == '' && senha2 == ''){
                        print('Senha nao compativel'),
                        print('Digite os campos senha '),

                      }else if(senha1 == senha2 ){
                        print('Nova senha cadastrada'),
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()),
                        )
                      }
                    },
                    shape: new RoundedRectangleBorder(borderRadius:
                    new BorderRadius.circular(20.0)),
                    child: Text(
                      "Confirmar",
                      style: TextStyle(color:Colors.white, fontSize: 20),
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
                      if(senha1 == '' && senha2 == ''){
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
                    new BorderRadius.circular(20.0)),
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