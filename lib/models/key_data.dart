import 'package:wordle_flutter/models/frame.dart';
import 'dart:collection';
import 'package:flutter/material.dart';

class KeyData extends ChangeNotifier {
  Map<String, Color> keys = {
    'Й': Colors.grey.shade300,
    'Ц': Colors.grey.shade300,
    'У': Colors.grey.shade300,
    'К': Colors.grey.shade300,
    'Е': Colors.grey.shade300,
    'Н': Colors.grey.shade300,
    'Г': Colors.grey.shade300,
    'Ш': Colors.grey.shade300,
    'Щ': Colors.grey.shade300,
    'З': Colors.grey.shade300,
    'Х': Colors.grey.shade300,
    'Ъ': Colors.grey.shade300,
    'Ф': Colors.grey.shade300,
    'Ы': Colors.grey.shade300,
    'В': Colors.grey.shade300,
    'А': Colors.grey.shade300,
    'П': Colors.grey.shade300,
    'Р': Colors.grey.shade300,
    'О': Colors.grey.shade300,
    'Л': Colors.grey.shade300,
    'Д': Colors.grey.shade300,
    'Ж': Colors.grey.shade300,
    'Э': Colors.grey.shade300,
    'Я': Colors.grey.shade300,
    'Ч': Colors.grey.shade300,
    'С': Colors.grey.shade300,
    'М': Colors.grey.shade300,
    'И': Colors.grey.shade300,
    'Т': Colors.grey.shade300,
    'Ь': Colors.grey.shade300,
    'Б': Colors.grey.shade300,
    'Ю': Colors.grey.shade300,
  };

  void changeColorUsed(String letter) {
    keys[letter] = Colors.grey.shade800;
    notifyListeners();
  }

  void changeColorOk(String letter) {
    keys[letter] = Colors.green;
    notifyListeners();
  }
}
