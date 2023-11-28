import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/models/alarme.dart';
import 'package:projeto_casa_arduino/models/comodo.dart';
import 'package:projeto_casa_arduino/provider/comodos.dart';
import 'package:provider/provider.dart';

class AlarmeTile extends StatelessWidget {
  final Alarme alarmes;

  const AlarmeTile(this.alarmes);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(alarmes.name!),
      //subtitle: Text("Dispositivos: " + comodos.dispositivos!),
      trailing: Container(
        width: 160,
        child: Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/showdevice');
              },
              child: Text('Ver Dispositivo'),
            ),
          ],
        ),
      ),
    );
  }
}
/*
class MyListItem extends StatelessWidget {
  final String itemText;

  MyListItem({required this.itemText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(itemText),
      trailing: ElevatedButton(
        onPressed: () {
          // Ação a ser executada quando o botão é pressionado
          print('Botão no item "$itemText" pressionado');
        },
        child: Text('Botão'),
      ),
    );
  }
}
*/