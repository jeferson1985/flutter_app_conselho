import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String>args) {
  runApp(
     MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
        )
  );
}

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List conselhos  = [
    'Não há coisa mais fria do que o conselho cuja aplicação seja impossível',
    'Conselhos ruins podem acabar com um dia, um ano ou uma vida inteira.',
    ' Dê mais às pessoas do que elas esperam e faça com alegria.',
    'Quando disser "Eu te amo" seja verdadeiro.',
    ' Em desentendimentos, brigue de forma justa. Não use palavrões.',
  ];
   void gerarConselho() {
    var geraNumero = Random().nextInt(conselhos.length);
    var conselhoSorteio =  conselhos[geraNumero];
    setState(() {
      palavra = conselhoSorteio;
    });
    print(conselhoSorteio);
  }
  var palavra = 'Clique abaixo para gerar';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Conselheiro'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(backgroundImage: AssetImage('assets/images/logo.png'),
            radius: 60,
            ),
            Container(
              child: 
              Text(palavra),
              decoration: BoxDecoration(
                color: Colors.green
                
                ),
            ),
            ElevatedButton(
            onPressed: gerarConselho,
            child: Text('Gerar'),
            )
          ],
        ),
      ),
    );
  }
}