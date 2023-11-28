import 'package:flutter/material.dart';

class Alarme {
  final String? id;
  final String? name;
  final String? status;

  const Alarme({
    this.id,
    @required this.name,
    this.status,
  });
}
