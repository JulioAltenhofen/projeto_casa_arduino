import 'dart:math';
import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/data/dummy_users.dart';
import 'package:projeto_casa_arduino/models/user.dart';

class Users with ChangeNotifier {
  //_items é privado
  final Map<String, User> _items = {...DUMMY_USERS};
  //clone da lista, pra n retornar uma referencia para esse map, pra outra parte da aplicação n fazer crud e essa parte n ser notificada
  //2 gets pra ver
  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

//metodos
  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }
    //alterar
    if (user.id != null &&
        user.id!.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
        user.id!,
        (_) => User(id: user.id, name: user.name, email: user.email),
      );
    } else {
      //adicionar
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => User(
          id: id,
          name: user.name,
          email: user.email,
        ),
      );
    }
    //notifica o provider q mudou
    notifyListeners();
  }

  void remove(User user) {
    if (user != null && user.id != null) {
      _items.remove(user.id);
      //notifica o provider q mudou
      notifyListeners();
    }
  }
}
