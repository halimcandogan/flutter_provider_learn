import 'package:flutter/material.dart';

class StateData with ChangeNotifier {
  String yazi = '';
  void newText(String text) {
    yazi = text;
    notifyListeners();
  }
}
