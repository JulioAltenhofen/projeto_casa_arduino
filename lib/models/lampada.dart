import 'package:flutter/material.dart';

class Lampada {
  final String? id;
  final String? name;
  final String? status;
  final String? cor;
  final String? luminosidade;

  const Lampada({
    this.id,
    @required this.name,
    this.status,
    this.cor,
    this.luminosidade,
  });
}
