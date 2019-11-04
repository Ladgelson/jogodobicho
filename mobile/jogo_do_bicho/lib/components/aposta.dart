import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/screens/adm/app.dart';

Widget builderItemAposta(context, index){
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Container(
      height: 340.0,
      decoration: myBoxDecoration(),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            padding: const EdgeInsets.fromLTRB(10.0, 6.0, 0.0, 1.0),
            alignment: Alignment.topLeft,
            child: Text(apostas[index].nomeDoApostador,
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ),
          Container(
            color: Colors.redAccent,
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 2.0),
            alignment: Alignment.topLeft,
            child: Text("Realizado: "+apostas[index].datahoraAposta, 
              style: TextStyle(color: Colors.white, fontSize: 13.0)
            ),
          ),
          Container(
            color: Colors.redAccent,
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 4.0),
            alignment: Alignment.topLeft,
            child: Text("Para: "+apostas[index].dia.toString() + "/"
            + apostas[index].mes.toString() + "/"
            + apostas[index].ano.toString()+ " - " + "Manhã", 
              style: TextStyle(color: Colors.white, fontSize: 13.0)
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                color: Colors.grey[600],
                height: 22.0,
                padding: const EdgeInsets.fromLTRB(60.0, 3.0, 60.0, 0.0),
                child: Text("Aposta:", style: TextStyle(color: Colors.white, fontSize: 15.0)),
              ),
              Container(
                alignment: Alignment.topRight,
                color: Colors.grey[600],
                height: 22.0,
                padding: const EdgeInsets.fromLTRB(60.0, 3.0, 79.0, 0.0),
                child: Text("Valor:", style: TextStyle(color: Colors.white, fontSize: 15.0)),
              ),
            ],
          ),
          Row(
            children: <Widget>[
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
                          child: Text("1 - "+apostas[index].i1.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("2 - "+apostas[index].i2.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("3 - "+apostas[index].i3.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("4 - "+apostas[index].i4.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("5 - "+apostas[index].i5.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("6 - "+apostas[index].i6.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("7 - "+apostas[index].i7.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("8 - "+apostas[index].i8.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("9 - "+apostas[index].i9.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                          child: Text("10 - "+apostas[index].i10.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("1 - "+apostas[index].v1.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("2 - "+apostas[index].v2.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("3 - "+apostas[index].v3.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("4 - "+apostas[index].v4.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("5 - "+apostas[index].v5.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("6 - "+apostas[index].v6.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("7 - "+apostas[index].v7.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("8 - "+apostas[index].v8.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("9 - "+apostas[index].v9.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                            Icons.attach_money,
                            size: 22.0,
                            color: Colors.yellowAccent,
                          ),
                        ),
                        Container(
                          //color: Colors.cyanAccent,
                          height: 22.0,
                          padding: const EdgeInsets.fromLTRB(0.0, 3.0, 2.0, 0.0),
                          alignment: Alignment.topLeft,
                          child: Text("10 - "+apostas[index].v10.toString(), style: TextStyle(color: Colors.white, fontSize: 15.0)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),  
            ],
          ),
        ],
      ),
    ),
  );
}