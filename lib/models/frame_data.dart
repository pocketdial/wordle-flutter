import 'package:wordle_flutter/models/frame.dart';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:wordle_flutter/game.dart';

class FrameData extends ChangeNotifier {
  final List<List<Frame>> frames = [
    [
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black)
    ],
    [
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black)
    ],
    [
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black)
    ],
    [
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black)
    ],
    [
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black)
    ],
    [
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black),
      Frame('', Colors.white, Colors.black)
    ],
  ];

  void changeLetter(Frame frame, String newLetter) {
    frame.letter = newLetter;
    notifyListeners();
  }

  void changeColor(Frame frame, Color inColour) {
    frame.colour = inColour;
    notifyListeners();
  }

  void changeRowWinColor() {
    for (int i = 0; i < 5; i++) {
      frames[wordCount][i].colour = Color(0xFF6aaa64);
      notifyListeners();
    }
  }

  void changeFontColor(Frame frame, Color inFColour) {
    frame.fontColour = inFColour;
    notifyListeners();
  }
}
