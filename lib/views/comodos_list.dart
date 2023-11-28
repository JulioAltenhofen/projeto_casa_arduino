import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/components/comodo_tile.dart';
import 'package:projeto_casa_arduino/models/comodo.dart';
import 'package:projeto_casa_arduino/provider/comodos.dart';
import 'package:projeto_casa_arduino/routes/app_routes.dart';
import 'package:provider/provider.dart';

import '../data/dummy_comodos.dart';

class ComodosList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Comodos comodos = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Comodos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.CADASTRO_COMODOS);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: dummy_comodos.length,
        itemBuilder: (ctx, index) {
          return ComodoTile(comodo: dummy_comodos[1]);
        },
      ),
    );
  }
}
