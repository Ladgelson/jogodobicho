import 'package:flutter/material.dart';
//import 'package:jogo_do_bicho/screens/login.dart';
import 'package:jogo_do_bicho/screens/adm/app.dart';

void main() {
  runApp(MaterialApp(
    home: appAdm(),
    theme: ThemeData(
      hintColor: Colors.redAccent,
      primaryColor: Colors.redAccent,
      textSelectionColor: Colors.redAccent, 
      cursorColor: Colors.redAccent,
      ),
  ));
}
