import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;

  toggleLoading() {
    _loading = !_loading;
    notifyListeners();
  }
}
