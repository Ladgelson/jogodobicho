import 'package:flutter/material.dart';

class ExtracaoItem {
  final int ano;
  final int mes;
  final int dia;
  final int periodo;
  final String num1;
  final String num2;
  final String num3;
  final String num4;
  final String num5;
  final String num6;
  final String num7;
  final String num8;
  final String num9;
  final String num10;
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