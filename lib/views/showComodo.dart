import 'package:flutter/material.dart';

void main() {
  runApp(showComodo());
}

class Device {
  final String name;
  final String type;
  final bool isOn;

  Device({required this.name, required this.type, required this.isOn});
}

class showComodo extends StatelessWidget {
  final List<Device> devices = [
    Device(name: 'Lâmpada', type: 'Iluminação', isOn: false),
    Device(name: 'Ar Condicionado', type: 'Climatização', isOn: true),
    Device(name: 'Smart TV', type: 'Entretenimento', isOn: true),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home Devices',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dispositivos Domésticos'),
        ),
        body: DeviceList(devices: devices),
      ),
    );
  }
}

class DeviceList extends StatelessWidget {
  final List<Device> devices;

  DeviceList({required this.devices});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: devices.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(devices[index].name),
          subtitle: Text(devices[index].type),
          trailing: Switch(
            value: devices[index].isOn,
            onChanged: (bool value) {
              // Adicione aqui a lógica para alterar o estado do dispositivo
              // Por exemplo: Ativar/Desativar o dispositivo
              // devices[index].isOn = value;
            },
          ),
        );
      },
    );
  }
}
