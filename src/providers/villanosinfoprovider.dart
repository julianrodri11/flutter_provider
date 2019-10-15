import 'package:flutter/material.dart';

class VillanosInfoProv with ChangeNotifier {
  String _villano = 'Villano A';
  int _edad = 38;
  Color colorBase = Colors.green;

  get villano {
    return _villano;
  }

  get edad {
    return _edad;
  }

  set villano(String nombre) {
    this._villano = nombre;
    this.colorBase = (nombre == 'Villano A') ? Colors.green : Colors.yellow;
    notifyListeners();
  }

  set edad(int edad) {
    this._edad = edad;
    notifyListeners();
  }
}
