import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/components/bottomNavBar.dart';
import 'package:jogo_do_bicho/domain/users.dart';
import 'package:jogo_do_bicho/domain/extracoes.dart';

class AppAdm extends StatefulWidget {
  AppAdm({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _appAdmState createState() => _appAdmState();
}

var _users = [ 
  UserItem(
    nome: "Ladgelson",
    tipo: "USUÀRIO",
    ultimaAposta: "Ultima aposta: hoje",
    saldo: "200.0",
    qtd: "114"
  ), 
  UserItem(
    nome: "Micaias",
    tipo: "USUÀRIO",
    ultimaAposta: "Ultima aposta: hoje",
    saldo: "200.0",
    qtd: "114"
  ),
  UserItem(
    nome: "Micaias",
    tipo: "USUÀRIO",
    ultimaAposta: "Ultima aposta: hoje",
    saldo: "200.0",
    qtd: "114"
  ),
];

var _extracoes = [ 
  ExtracaoItem(
    periodo: 1,
    dia: 19,
    mes: 8,
    ano: 2019,
    num1: "1000",
    num2: "1000",
    num3: "1000",
    num4: "1000",
    num5: "1000",
    num6: "1000",
    num7: "1000",
    num8: "1000",
    num9: "1000",
    num10: "7000"
  ),
  ExtracaoItem(
    periodo: 1,
    dia: 19,
    mes: 8,
    ano: 2019,
    num1: "1000",
    num2: "1000",
    num3: "1000",
    num4: "1000",
    num5: "1000",
    num6: "1000",
    num7: "1000",
    num8: "1000",
    num9: "1000",
    num10: "7000"
  ),
];

var _tipos = [
  {
    "len": _users.length,
    "builder": builderItemUser
  },
  {
    "len": _extracoes.length,
    "builder": builderItemExtracao
  }
];

class _appAdmState extends State<AppAdm> {

  int currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    _users.add(UserItem(
      nome: "Kakaka",
      tipo: "CAMBISTA",
      ultimaAposta: "Ultima aposta: Ontem",
      saldo: "10.0",
      qtd: "2"
    ));
    print(_users);
    setState(() {
      _users;
      _tipos[currentIndex]['len'] = _users.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuários'),
      ),
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
        itemCount: _tipos[currentIndex]['len'],
        itemBuilder: _tipos[currentIndex]['builder'],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Usuários'),
              activeColor: Colors.redAccent
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Extracoes'),
            activeColor: Colors.redAccent,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Apostas'),
              activeColor: Colors.redAccent
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Config'),
              activeColor: Colors.redAccent
          ),
        ],
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: Colors.grey[800],
  );
}

// construtor da lista de usuários 
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
                  child: Text(_users[index].nome, style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
                Container(
                  //color: Colors.redAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 2.0),
                  alignment: Alignment.topLeft,
                  child: Text(_users[index].tipo, 
                    style: TextStyle(color: Colors.grey[400], fontSize: 10.0)
                  ),
                ),
                Container(
                  //color: Colors.redAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 2.0),
                  alignment: Alignment.topLeft,
                  child: Text(_users[index].ultimaAposta, 
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
                      child: Text(_users[index].saldo, style: TextStyle(color: Colors.yellowAccent, fontSize: 20.0)),
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
                      child: Text(_users[index].qtd, style: TextStyle(color: Colors.greenAccent, fontSize: 20.0)),
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

// construtor da lista de extrações
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
                    _extracoes[index].dia.toString()+"/"
                    +_extracoes[index].mes.toString()+"/"
                    +_extracoes[index].ano.toString(),
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
                      child: Text("1 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("2 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("3 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("4 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("5 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("6 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("7 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("8 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("9 - "+_extracoes[index].num1+" 01 "+ "Aveztruz", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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
                      child: Text("10 - "+_extracoes[index].num1+" 01 "+ "Gato", style: TextStyle(color: Colors.white, fontSize: 15.0)),
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