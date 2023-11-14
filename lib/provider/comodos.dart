import 'dart:math';
import 'package:flutter/material.dart';
import '../data/dummy_comodos.dart';
import '../models/comodo.dart';

class Comodos with ChangeNotifier {
  //_items é privado
  final Map<String, Comodo> _items = {...dummy_comodos};
  //clone da lista, pra n retornar uma referencia para esse map, pra outra parte da aplicação n fazer crud e essa parte n ser notificada
  //2 gets pra ver
  List<Comodo> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

//metodos
  Comodo byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Comodo comodo) {
    if (comodo == null) {
      return;
    }
    //alterar
    if (comodo.id != null &&
        comodo.id!.trim().isNotEmpty &&
        _items.containsKey(comodo.id)) {
      _items.update(
        comodo.id!,
        (_) => Comodo(
            id: comodo.id,
            name: comodo.name,
            dispositivos: comodo.dispositivos),
      );
    } else {
      //adicionar
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Comodo(
          id: id,
          name: comodo.name,
          dispositivos: comodo.dispositivos,
        ),
      );
    }
    //notifica o provider q mudou
    notifyListeners();
  }

  void remove(Comodo comodo) {
    if (comodo.id != null && comodo.id != null) {
      _items.remove(comodo);

      notifyListeners();
    }
  }
}
