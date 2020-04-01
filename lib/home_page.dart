import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'lista_page.dart';

class HomePage extends StatefulWidget{

  HomePage({Key key}) : super(key: key);
  
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  int selectedIndex = 0;

  final widgetOptions = [
    new ListPage(),
    Text('Adicionar bebida'),
    Text('Favoritos'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //cabeçalho do app
      appBar: AppBar(
        title: Text('Gelada App'),
      ),
      
      //corpo da pagina homepage
      body:Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),

      //Opção do menu de navegação
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.local_drink), title: Text('Lista')), // lista de bebidas
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), title: Text('Adicionar bebida')), // Adicionar bebida
          BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('Bebida')), // Favoritos

        ],
        
        //indicar opção corrente (ou selecionada)
        currentIndex : selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: cliquei,


        ),
    );
  }

  void cliquei(int index){
    setState(() {
      selectedIndex = index;
    });
  }

}