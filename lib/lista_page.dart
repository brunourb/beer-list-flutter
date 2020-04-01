import 'dart:convert';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  ListPageState createState() => ListPageState();
}

class ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
          child: new Center(
          //Recurso para consumir um dado de forma assincrona.
          //Teste recurso pode ser local ou remoto
          child: new FutureBuilder(
              future: DefaultAssetBundle.of(context).loadString('assets/bebidas.json'),
              builder: (context, snapshot) {

                //Leu o arquivo e está atribuindo todos os dados para a variável bebidas;
                var bebidas = json.decode(snapshot.data.toString());

                return new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    var bebida = bebidas[index];
                    return new Card(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Text("Nome: " + bebida['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23)),
                          new Text("País: " + bebida['country'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          new Text("Teor Alcol.: " + bebida['abv'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          new Image.network(bebida['image'], height: 200)
                        ],
                      ),
                    );
                  },
                  itemCount: bebidas == null ? 0 : bebidas.length,
                );
              }),
          ),
    ));
  }
}
