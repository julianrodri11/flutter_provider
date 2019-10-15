import 'package:flutter/material.dart';

class HeroesInfoProv with ChangeNotifier {
  String _heroe = 'Super Heroe A';
  int _edad = 38;
  Color colorBase = Colors.redAccent;

  get heroe {
    return _heroe;
  }

  get edad {
    return _edad;
  }

  set heroe(String nombre) {
    this._heroe = nombre;

    this.colorBase = (nombre == 'Super Heroe A') ? Colors.redAccent : Colors.blue;

    notifyListeners();
  }

  set edad(int edad) {
    this._edad = edad;
    notifyListeners();
  }
}
