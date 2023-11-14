import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/models/comodo.dart';
import 'package:projeto_casa_arduino/provider/comodos.dart';
import 'package:projeto_casa_arduino/provider/users.dart';
import 'package:projeto_casa_arduino/routes/app_routes.dart';
import 'package:provider/provider.dart';

class ComodoTile extends StatelessWidget {
  final Comodo comodos;

  const ComodoTile(this.comodos);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(comodos.name!),
      //subtitle: Text("Dispositivos: " + comodos.dispositivos!),
      trailing: Container(
        width: 160,
        child: Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              child: Text('Ver Comodo'),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir Comodo'),
                    content: Text('Tem certeza???'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Não'),
                        onPressed: () => Navigator.of(context).pop(false),
                      ),
                      TextButton(
                        child: Text('Sim'),
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ],
                  ),
                ).then((confimed) {
                  if (confimed) {
                    Provider.of<Comodos>(context, listen: false)
                        .remove(comodos);
                  }
                });
              },
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