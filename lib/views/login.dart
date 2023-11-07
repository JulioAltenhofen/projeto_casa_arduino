import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 113, 0, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Fazer login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "E-mail",
                  hintText: "exemplo@exemplo.com",
                  labelStyle:
                      TextStyle(color: Colors.white, fontSize: 25, height: 0.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 8, 40, 50),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  labelText: "Senha",
                  hintText: "**********",
                  labelStyle:
                      TextStyle(color: Colors.white, fontSize: 25, height: 0.5),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(11, 113, 0, 1),
                  side: BorderSide(width: 2, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/comodos');
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(11, 113, 0, 1),
                  side: BorderSide(width: 2, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Voltar",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
