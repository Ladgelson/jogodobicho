import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/screens/adm/app.dart';

Widget builderItemExtracao(context, index){
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Container(
      height: 155.0,
      decoration: myBoxDecoration(),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  //color: Colors.tealAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 6.0, 0.0, 1.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    extracoes[index].dia.toString()+"/"
                    +extracoes[index].mes.toString()+"/"
                    +extracoes[index].ano.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
                Container(
                  //color: Colors.redAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 2.0),
                  alignment: Alignment.topLeft,
                  child: Text("Manhã", 
                    style: TextStyle(color: Colors.grey, fontSize: 13.0)
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("1 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("2 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("3 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("4 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("5 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("6 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("7 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("8 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("9 - "+extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(2.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 22.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text("10 - "+extracoes[index].num1+" 01 "+ "Gato", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ],
                ),
              ],
            )
          ),  
        ],
      ),
    ),
  );
}
