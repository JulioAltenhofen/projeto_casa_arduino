import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/data/dummy_alarme.dart';
import 'package:projeto_casa_arduino/models/alarme.dart';
import 'package:projeto_casa_arduino/provider/comodos.dart';
import 'package:projeto_casa_arduino/provider/lampada.dart';
import 'package:projeto_casa_arduino/routes/app_routes.dart';
import 'package:provider/provider.dart';

class ShowDevice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LampadaProvider = Provider.of<Lampada>(context);
    final dummy_lampada = LampadaProvider.dummy_lampada;

    final AlarmeProvider = Provider.of<Alarme>(context);
    final dummy_alarme = AlarmeProvider.dummy_alarme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Dispositivos'),
      ),
      body: Column(
        children: [
          Text('Dummy Alarme: $dummy_alarme'),
          Text('Dummy Lâmpada: $dummy_lampada'),
        ],
      ),
    );
  }
}
