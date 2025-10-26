import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  bool _isSearching = false;

  bool get isSearching => _isSearching;

  void toggleSearch() {
    _isSearching = !_isSearching;
    notifyListeners();
  }
}