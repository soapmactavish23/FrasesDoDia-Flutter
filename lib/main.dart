import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
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
    "Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos",
    "O sucesso normalmente vem para quem está ocupado demais para procurar por ele",
    "A vida é melhor para aqueles que fazem o possível para ter o melhor",
    "Os empreendedores falham, em média, 3,8 vezes antes do sucesso final. O que separa os bem-sucedidos dos outros é a persistência\n" +
    "Se você não está disposto a arriscar, esteja disposto a uma vida comum",
    "Escolha uma ideia. Faça dessa ideia a sua vida. Pense nela, sonhe com ela, viva pensando nela. Deixe cérebro, músculos, nervos, todas as partes do seu corpo serem preenchidas com essa ideia. Esse é o caminho para o sucesso",
    "Para de perseguir o dinheiro e comece a perseguir o sucesso. Todos os seus sonhos podem se tornar realidade se você tem coragem para persegui-los) \"Ter sucesso é falhar repetidamente, mas sem perder o entusiasmo",
    "Sempre que você vir uma pessoa de sucesso, você sempre verá as glórias, nunca os sacrifícios que os levaram até ali",
    "Sucesso? Eu não sei o que isso significa. Eu sou feliz. A definição de sucesso varia de pessoa para pessoa Para mim, sucesso é paz anterior",
    "Oportunidades não surgem. É você que as cria",
    "Não tente ser uma pessoa de sucesso. Em vez disso, seja uma pessoa de valor",
    "Não é o mais forte que sobrevive, nem o mais inteligente. Quem sobrevive é o mais disposto à mudança",
    "A melhor vingança é um sucesso estrondoso",
    "Eu não falhei. Só descobri 10 mil caminhos que não eram o certo",
    "Um homem de sucesso é aquele que cria uma parede com os tijolos que jogaram nele",
    "Ninguém pode fazer você se sentir inferior sem o seu consentimento",
    "O grande segredo de uma boa vida é encontrar qual é o seu destino. E realizá-lo",
    "Se você está atravessando um inferno, continue atravessando",
    "O que nos parece uma provação amarga pode ser uma bênção disfarçada",
    "A distância entre a insanidade e a genialidade é medida pelo sucesso",
    "Não tenha medo de desistir do bom para perseguir o ótimo",
    "A felicidade é uma borboleta que, sempre que perseguida, parecerá inatingível, no entanto, se você for paciente, ela pode pousar no seu ombro",
    "Se você não pode explicar algo de forma simples, então você não entendeu muito bem o que tem a dizer",
    "Há dois tipos de pessoa que vão te dizer que você não pode fazer a diferença neste mundo: as que têm medo de tentar e as que têm medo de que você se dê bem",
    "Comece de onde você está. Use o que você tiver. Faça o que você puder",
    "As pessoas me perguntam qual é o papel que mais gostei de interpretar. Eu sempre respondo: o próximo",
    "Descobri que, quanto mais eu trabalho, mais sorte eu pareço ter",
    "O ponto de partida de qualquer conquista é o desejo"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void gerarNum(){
    var num = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[num];
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: gerarNum,
              )
            ],
          ),
        ),
      )
    );
  }
}