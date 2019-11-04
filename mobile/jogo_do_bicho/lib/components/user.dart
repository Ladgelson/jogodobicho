import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/screens/adm/app.dart';

Widget builderItemUser(context, index){
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Container(
      height: 70.0,
      decoration: myBoxDecoration(),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 8.0,bottom: 10.0, top: 10.0),
            child: Icon(
              Icons.assignment_ind,
              size: 50.0,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  //color: Colors.tealAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 6.0, 0.0, 1.0),
                  alignment: Alignment.topLeft,
                  child: Text(users[index].nome, style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
                Container(
                  //color: Colors.redAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 2.0),
                  alignment: Alignment.topLeft,
                  child: Text(users[index].tipo, 
                    style: TextStyle(color: Colors.grey[400], fontSize: 10.0)
                  ),
                ),
                Container(
                  //color: Colors.redAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 2.0),
                  alignment: Alignment.topLeft,
                  child: Text(users[index].ultimaAposta, 
                    style: TextStyle(color: Colors.grey, fontSize: 13.0)
                  ),
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
                      padding: EdgeInsets.fromLTRB(40.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.attach_money,
                        size: 30.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text(users[index].saldo, style: TextStyle(color: Colors.yellowAccent, fontSize: 20.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(40.0,0.0,0.0,0.0),
                      child: Icon(
                        Icons.assessment,
                        size: 30.0,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 0.0, 2.0),
                      alignment: Alignment.topLeft,
                      child: Text(users[index].qtd, style: TextStyle(color: Colors.greenAccent, fontSize: 20.0)),
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

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: Colors.grey[800],
  );
}