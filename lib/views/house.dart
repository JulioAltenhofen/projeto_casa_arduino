import 'package:flutter/material.dart';

class Room {
  String name;
  int numberOfDevices;

  Room(this.name, this.numberOfDevices);
}

class Comodo extends StatefulWidget {
  @override
  _ComodoState createState() => _ComodoState();
}

class _ComodoState extends State<Comodo> {
  final List<Room> rooms = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(11, 113, 0, 1),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 89, 0),
          title: Text('Cadastro de Cômodos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Text(
                  'Cômodos:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: rooms.length,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      onPressed: () {
                        print('/comodo${index}');
                        // Navigator.of(context)
                        //     .pushReplacementNamed('/comodo${rooms[index]}')
                      },
                      child: Column(
                        children: [
                          Text(rooms[index].name),
                          Text('Dispositivos: ${rooms[index].numberOfDevices}'),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(8, 83, 0, 1),
                    ),
                    onPressed: () {
                      _showRoomDialog(context);
                    },
                    child: Text('Adicionar Cômodo'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showRoomDialog(BuildContext context) {
    String roomName = '';
    int numberOfDevices = 0;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Novo Cômodo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nome do Cômodo'),
                onChanged: (value) {
                  roomName = value;
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  rooms.add(Room(roomName, numberOfDevices));
                });
                Navigator.of(context).pop();
              },
              child: Text('Salvar'),
            ),
          ],
        );
      },
    );
  }
}
