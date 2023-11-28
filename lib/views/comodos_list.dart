import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/components/comodo_tile.dart';
import 'package:projeto_casa_arduino/components/user_tile.dart';
import 'package:projeto_casa_arduino/provider/comodos.dart';
import 'package:projeto_casa_arduino/provider/users.dart';
import 'package:projeto_casa_arduino/routes/app_routes.dart';
import 'package:provider/provider.dart';

class ComodosList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Comodos comodos = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
      ),
      body: ListView.builder(
        itemCount: comodos.count,
        itemBuilder: (ctx, i) => ComodoTile(comodos.byIndex(i)),
      ),
    );
  }
}
