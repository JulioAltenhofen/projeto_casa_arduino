import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tela Inicial'),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 200.0, 8.0, 200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Casa inteligente com arduino',
                style: TextStyle(
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 40.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(16, 157, 0, 1),
                        side: BorderSide(width: 2, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/login');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Fazer Login",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
