import 'package:flutter/material.dart';
import 'package:projeto_casa_arduino/data/dummy_alarme.dart';

import '../models/alarme.dart';

class Alarmes with ChangeNotifier {
  final Map<String, Alarme> _items = {...dummy_alarme};
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
