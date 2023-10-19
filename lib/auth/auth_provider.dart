import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void setAuthenticated(bool status) {
    _isAuthenticated = status;
    notifyListeners();
  }
}
