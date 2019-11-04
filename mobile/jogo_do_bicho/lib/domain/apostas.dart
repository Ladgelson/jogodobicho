import 'package:flutter/material.dart';

class ApostaItem {
  String nomeDoApostador;
  int tipo;
  String datahoraAposta;
  int ano;
  int mes;
  int dia;
  int periodo;
  int i1;
  int i2;
  int i3;
  int i4;
  int i5;
  int i6;
  int i7;
  int i8;
  int i9;
  int i10;
  double v1;
  double v2;
  double v3;
  double v4;
  double v5;
  double v6;
  double v7;
  double v8;
  double v9;
  double v10;
  bool ganhou;
  ApostaItem({ 
        @required this.nomeDoApostador,
        @required this.tipo,
        @required this.datahoraAposta,
        @required this.periodo,
        @required this.i1,
        @required this.i2,
        @required this.i3,
        @required this.i4,
        @required this.i5,
        @required this.i6,
        @required this.i7,
        @required this.i8,
        @required this.i9,
        @required this.i10,
        @required this.v1,
        @required this.v2,
        @required this.v3,
        @required this.v4,
        @required this.v5,
        @required this.v6,
        @required this.v7,
        @required this.v8,
        @required this.v9,
        @required this.v10,
        @required this.dia,
        @required this.mes,
        @required this.ano,
        @required this.ganhou
        }) {
    assert(datahoraAposta != null);
    assert(tipo != null);
    assert(datahoraAposta != null);
    assert(periodo != null);
    assert(dia != null);
    assert(mes != null);
    assert(ano != null);
    assert(i1 != null);
    assert(i2 != null);
    assert(i2 != null);
    assert(i3 != null);
    assert(i4 != null);
    assert(i5 != null);
    assert(i6 != null);
    assert(i7 != null);
    assert(i8 != null);
    assert(i9 != null);
    assert(i10 != null);
    assert(v1 != null);
    assert(v2 != null);
    assert(v2 != null);
    assert(v3 != null);
    assert(v4 != null);
    assert(v5 != null);
    assert(v6 != null);
    assert(v7 != null);
    assert(v8 != null);
    assert(v9 != null);
    assert(v10 != null);
    assert(ganhou != null);
  }
}