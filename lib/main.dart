import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A arte de ser ora audacioso, ora prudente, é a arte de vencer",
    "Nossos fracassos, às vezes, são mais frutíferos do que os êxitos",
    "Comemore os seus sucessos. Veja com humor os seus fracassos",
    "Não somos responsáveis apenas pelo que fazemos, mas também pelo que deixamos de fazer",
    "É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo"
  ];

  var _frasesGerada = "Clique Abaixo para gerar um frase";

  void _gerarFrase (){
    var numero = Random().nextInt(_frases.length);

    setState(() {
      _frasesGerada = _frases [numero];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do Dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity,
            // decoration: BoxDecoration(
            //   border: Border.all(width: 3, color: Colors.amber),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(
                    _frasesGerada,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    )
                ),

                RaisedButton(
                    child: Text(
                        "Nova Frase",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        )),
                    color: Colors.green,
                    onPressed: _gerarFrase,
                )
              ],
            ),
          ),
        ));
  }
}
