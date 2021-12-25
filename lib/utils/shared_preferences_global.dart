

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesGlobal{
  // con esto creamos un SINGLETON
  // un valor estatico nos permite utilizar la clase y atributos
  // sin necesidad de instanciar o crear un objeto
  static final _instance = SharedPreferencesGlobal._data();

  SharedPreferencesGlobal._data();

  factory SharedPreferencesGlobal(){
    return _instance;
  }

  late SharedPreferences _prefs;

  Future initShare() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // OBJETOS QUE VOY A GUARDAR
  // GUARDAMOS CON SET
  set fullName(String name) {
    _prefs.setString("fullName", name);
  }

  set address(String address) {
    _prefs.setString("address", address);
  }

  set darkMode(bool darkMode) {
    _prefs.setBool("darkMode", darkMode);
  }

  set gender(int gender) {
    _prefs.setInt("gender", gender);
  }

  // OBTENEMOS CON GET
  String get fullName{
    return _prefs.getString("fullName") ?? "";
  }

  String get address{
    return _prefs.getString("address") ?? "";
  }

  bool get darkMode{
    return _prefs.getBool("darkMode") ?? false;
  }

  int get gender{
    return _prefs.getInt("gender") ?? 0;
  }

}