import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  Widget constroiTelaCadastro(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Criar conta",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 25, height: 0.5),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Sobrenome",
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 25, height: 0.5),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "exemplo@exemplo.com",
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 25, height: 0.5),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Login",
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 25, height: 0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 8, 40, 50),
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    labelText: "Senha",
                    hintText: "**********",
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 25, height: 0.5),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
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
                      "Cadastrar",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(16, 157, 0, 1),
                    side: BorderSide(width: 2, color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Voltar",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: constroiTelaCadastro(context),
    );
  }
}
