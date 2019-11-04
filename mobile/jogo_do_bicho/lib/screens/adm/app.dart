import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/components/bottomNavBar.dart';
import 'package:jogo_do_bicho/domain/users.dart';
import 'package:jogo_do_bicho/domain/extracoes.dart';
import 'package:jogo_do_bicho/domain/apostas.dart';
import 'package:jogo_do_bicho/components/user.dart';
import 'package:jogo_do_bicho/components/aposta.dart';
import 'package:jogo_do_bicho/components/extracao.dart';

class AppAdm extends StatefulWidget {
  AppAdm({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _appAdmState createState() => _appAdmState();
}

var users = [ 
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

var extracoes = [ 
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

var apostas = [ 
  ApostaItem(
    periodo: 1,
    dia: 19,
    mes: 8,
    ano: 2019,
    nomeDoApostador: "Monica",
    tipo: 1,
    datahoraAposta: "23/04 22h",
    i1: 150,
    i2: 10,
    i3: 10,
    i4: 10,
    i5: 10,
    i6: 10,
    i7: 10,
    i8: 10,
    i9: 10,
    i10: 10,
    v1: 150,
    v2: 10,
    v3: 10,
    v4: 10,
    v5: 10,
    v6: 10,
    v7: 10,
    v8: 10,
    v9: 10,
    v10: 10,
    ganhou: false,
  ),
];

var _tipos = [
  {
    "len": users.length,
    "builder": builderItemUser
  },
  {
    "len": extracoes.length,
    "builder": builderItemExtracao
  },
  {
    "len": apostas.length,
    "builder": builderItemAposta
  }
];

class _appAdmState extends State<AppAdm> {

  int currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    users.add(UserItem(
      nome: "Kakaka",
      tipo: "CAMBISTA",
      ultimaAposta: "Ultima aposta: Ontem",
      saldo: "10.0",
      qtd: "2"
    ));
    print(users);
    setState(() {
      users;
      _tipos[currentIndex]['len'] = users.length;
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
              activeColor: Colors.white
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.beenhere),
            title: Text('Extracoes'),
            activeColor: Colors.white,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.casino),
              title: Text('Apostas'),
              activeColor: Colors.white
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Config'),
              activeColor: Colors.white
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