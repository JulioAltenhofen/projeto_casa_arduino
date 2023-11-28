import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/data/dummy_alarme.dart';

class Alarme with ChangeNotifier {
  //_items é privado

  final Map<String, Alarme> _items = {...dummy_alarme};
  //clone da lista, pra n retornar uma referencia para esse map, pra outra parte da aplicação n fazer crud e essa parte n ser notificada
  //2 gets pra ver
  List<Alarme> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

//metodos
  Alarme byIndex(int i) {
    return _items.values.elementAt(i);
  }

  //notifica o provider q mudou
  notifyListeners();
}
