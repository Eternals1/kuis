import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// ketika sesuatu dipilih dan berubah warna
  String _selectedKey = 'kelas_drawer';
  String get selectedKey => _selectedKey;
  set selectedKey(String value) {
    _selectedKey = value;
  }
}
