import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  bool _joinSuccess = false;
  bool get joinSuccess => _joinSuccess;
  set joinSuccess(bool value) {
    _joinSuccess = value;
  }

  DocumentReference? _joinedKelasRef;
  DocumentReference? get joinedKelasRef => _joinedKelasRef;
  set joinedKelasRef(DocumentReference? value) {
    _joinedKelasRef = value;
  }
}
