import 'package:flutter/material.dart';

class UserItem {
  final String nome;
  final String tipo;
  final String ultimaAposta;
  final String saldo;
  final String qtd;
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