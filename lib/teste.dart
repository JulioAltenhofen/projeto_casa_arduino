import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Teste(),
    );
  }
}

class Teste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Página Inicial'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Ação a ser executada ao pressionar o botão de configurações.
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Bem-vindo à minha página inicial!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
