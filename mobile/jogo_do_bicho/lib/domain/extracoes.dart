import 'package:flutter/material.dart';

class ExtracaoItem {
  int ano;
  int mes;
  int dia;
  int periodo;
  String num1;
  String num2;
  String num3;
  String num4;
  String num5;
  String num6;
  String num7;
  String num8;
  String num9;
  String num10;
  ExtracaoItem({ 
        @required this.periodo,
        @required this.num1,
        @required this.num2,
        @required this.num3,
        @required this.num4,
        @required this.num5,
        @required this.num6,
        @required this.num7,
        @required this.num8,
        @required this.num9,
        @required this.num10,
        @required this.dia,
        @required this.mes,
        @required this.ano,
        }) {
    assert(periodo != null);
    assert(dia != null);
    assert(mes != null);
    assert(ano != null);
    assert(num1 != null);
    assert(num2 != null);
    assert(num2 != null);
    assert(num3 != null);
    assert(num4 != null);
    assert(num5 != null);
    assert(num6 != null);
    assert(num7 != null);
    assert(num8 != null);
    assert(num9 != null);
    assert(num10 != null);
  }
}