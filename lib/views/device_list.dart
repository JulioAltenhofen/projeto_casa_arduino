import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/components/alarme_tile.dart';
import 'package:projeto_casa_arduino/components/comodo_tile.dart';
import 'package:projeto_casa_arduino/components/user_tile.dart';
import 'package:projeto_casa_arduino/models/alarme.dart';
import 'package:projeto_casa_arduino/models/lampada.dart';
import 'package:projeto_casa_arduino/provider/alarme.dart';
import 'package:projeto_casa_arduino/provider/comodos.dart';
import 'package:projeto_casa_arduino/provider/lampada.dart';
import 'package:projeto_casa_arduino/provider/users.dart';
import 'package:projeto_casa_arduino/routes/app_routes.dart';
import 'package:provider/provider.dart';

class DevicesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Alarmes alarmes = Provider.of(context);
    // final Lampadas lampadas = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
      ),
      body: ListView.builder(
        itemCount: alarmes.count,
        itemBuilder: (ctx, i) => AlarmeTile(alarmes.byIndex(i)),
      ),
    );
  }
}
