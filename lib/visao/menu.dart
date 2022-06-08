import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:login/visao/cadIniciarOcorrencia.dart';
import 'package:login/visao/cadOcorrenciasAtivas.dart';
import 'package:login/visao/cadOcorrenciasFinalizadas.dart';

import 'package:login/visao/principal.dart';
import 'package:login/visao/relatorios.dart';

//indice de seleção da tela
int _selectedIndex = 0;

//vetor de telas a serem utilizadas
List<Widget> _stOptions = <Widget>[
  Principal(),
  CadIniciarOcorrencia(),
  CadOcorrenciasAtivas(),
  CadOcorrenciasFinalizadas(),
  Relatorios(),

];

class Navegar extends StatefulWidget {
  int _opcao;

  //contrutor passando o indice da tela selecionada
  Navegar(this._opcao);

  @override
  _NavegarState createState() => _NavegarState(this._opcao);
}

class _NavegarState extends State<Navegar> {

  //construtor
  _NavegarState(this._opcao);
  int _opcao;

  @override
  void initState() {
    _selectedIndex = _opcao;
  }


  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: Colors.blue.shade900,




      //corpo da aplicação, aqui são setadas as telas
      body: _stOptions.elementAt(_selectedIndex),

      //botões do BN
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Principal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_twighlight),
            label: 'Iniciar Ocorrencia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list),
            label: 'Ocorrencias Ativas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_add_check_outlined),
            label: 'Ocorrencias Finalizadas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Relatorios',
          ),

        ],

        unselectedItemColor: Colors.grey,

        currentIndex: _selectedIndex,

        selectedItemColor: Colors.orange,
        //greenAccent,
        onTap:
        _onItemTapped, //chama o métdodo onItemTapped ao clicar no botao do BTNNavigation
      ),
    );
  }

  @override
  void _onItemTapped(int  index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}