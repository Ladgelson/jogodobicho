import 'package:flutter/material.dart';

class UserItem {
  String nome;
  String tipo;
  String ultimaAposta;
  String saldo;
  String qtd;
  UserItem({ @required this.nome,
        @required this.tipo,
        @required this.ultimaAposta,
        @required this.saldo,
        @required this.qtd}) {
    assert(nome != null);
    assert(tipo != null);
    assert(ultimaAposta != null);
    assert(saldo != null);
    assert(qtd != null);
  }
}