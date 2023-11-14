import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/models/comodo.dart';
import 'package:projeto_casa_arduino/models/user.dart';
import 'package:projeto_casa_arduino/provider/comodos.dart';
import 'package:projeto_casa_arduino/provider/users.dart';
import 'package:provider/provider.dart';

class ComodoForm extends StatefulWidget {
  @override
  _ComodoFormState createState() => _ComodoFormState();
}

class _ComodoFormState extends State<ComodoForm> {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

  void _loadFormData(Comodo comodo) {
    if (comodo != null) {
      _formData['id'] = comodo.id!;
      _formData['name'] = comodo.name!;
      _formData['dispositivos'] = comodo.dispositivos!;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Comodo? comodo =
        ModalRoute.of(context)!.settings.arguments as Comodo?;
    if (comodo != null) {
      _loadFormData(comodo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar comodo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final isValid = _form.currentState!.validate();

              if (isValid) {
                _form.currentState!.save();

                Provider.of<Comodos>(context, listen: false).put(
                  Comodo(
                    id: _formData['id'],
                    name: _formData['name'],
                    dispositivos: _formData['dispositivos'],
                  ),
                );
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: _formData['name'],
                decoration: InputDecoration(labelText: 'Comodo'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nome inválido';
                  }

                  if (value.trim().length < 3) {
                    return 'Nome muito pequeno. No mínimo 3 letras.';
                  }

                  return null;
                },
                onSaved: (value) => _formData['name'] = value!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
