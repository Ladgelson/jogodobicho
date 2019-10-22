import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/components/bottomNavBar.dart';


class users extends StatefulWidget {
  users({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _usersState createState() => _usersState();
}

class _usersState extends State<users> {

  int currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuários'),
      ),
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              '$_counter',
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
              title: Text('Configurações'),
              activeColor: Colors.redAccent
          ),
        ],
      ),
    );
  }
}