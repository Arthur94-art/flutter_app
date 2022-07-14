import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  void navigateByPathName(path, context) {
    Navigator.pushNamed(context, path);
  }

  void navigateTo(context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  void navigateBack(context) {
    Navigator.pop(context);
  }

  String _inputData = '';
  String get getInputValue => _inputData;
  void changeValue(String value) {
    _inputData = value;
    notifyListeners();
  }
}
