import 'package:flutter/material.dart';

class UiProvaider extends ChangeNotifier {
  int _selectMenuOpt = 0;
  int get selectMenuOpt {
    return this._selectMenuOpt;
  }

  set selectMenuOpt(int i) {
    this._selectMenuOpt = i;
    notifyListeners();
  }
}
