
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/splash.dart';
import 'package:login/visao/menu.dart';
import 'package:login/visao/principal.dart';

class CadIniciarOcorrencia extends StatefulWidget {

  @override
  _CadIniciarOcorrenciaState createState() => _CadIniciarOcorrenciaState();
}

class _CadIniciarOcorrenciaState extends State<CadIniciarOcorrencia> {
  String rua= '';
  int numero= 0;
  String bairro= '';
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
                    "Iniciar Ocorrencia",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 50)
                ),

                TextField(
                    onChanged: (text){
                      rua = text;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText:"Rua:",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),
                TextField(
                    onChanged: (text){
                      numero = text as int;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText:"numero:",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),
                TextField(
                    onChanged: (text){
                      bairro = text;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText:"Bairro:",
                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),
                Text(
                    "Motivo Ocorrencia",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30)
                ),
                Divider(),
                TextField(
                    onChanged: (text){
                      bairro = text;
                    },
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(

                      labelStyle: TextStyle(color: Colors.white),
                    )
                ),  //TextField
                Divider(),

                ButtonTheme(
                  highlightColor: Colors.red ,
                  splashColor: Colors.black38,
                  height: 20.0,
                  child: RaisedButton(
                    onPressed: () => {
                      if(rua == '' && numero > 0 && bairro == ''){
                        print('Denuncia nao enviada'),
                        print('Digite todos os campos corretamente '),

                      }else{
                        print('Denuncia enviada'),
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Splash()),
                        )
                      }
                    },
                    shape: new RoundedRectangleBorder(borderRadius:
                    new BorderRadius.circular(20.0)),
                    child: Text(
                      "Enviar Denuncia",
                      style: TextStyle(color: Colors.blue.shade900, fontSize: 20),
                    ),
                    color:Colors.white,
                  ),
                ),




              ],
            ),
          ),
        )
    );
  }
}