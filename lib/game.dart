import 'package:flutter/material.dart';
import 'package:wordle_flutter/widgets/row_of_frames.dart';
import 'package:wordle_flutter/widgets/keyboard.dart';
import 'package:wordle_flutter/models/frame_data.dart';
import 'package:provider/provider.dart';
import 'main.dart';

int wordCount = 0;
int letterCount = -1;
String secretWord = 'ПИПКА';

void wordIncrement() {
  wordCount++;
}

void letterIncrement() {
  if (letterCount < 4) {
    letterCount++;
  }
}

void checkWord(context) {
  if (Provider.of<FrameData>(context, listen: false)
              .frames[wordCount][0]
              .letter +
          Provider.of<FrameData>(context, listen: false)
              .frames[wordCount][1]
              .letter +
          Provider.of<FrameData>(context, listen: false)
              .frames[wordCount][2]
              .letter +
          Provider.of<FrameData>(context, listen: false)
              .frames[wordCount][3]
              .letter +
          Provider.of<FrameData>(context, listen: false)
              .frames[wordCount][4]
              .letter ==
      secretWord) {
    Provider.of<FrameData>(context, listen: false).changeRowWinColor();
    print('weee!');
    showAlert(context, 'Вы только посмотрите!');
  } else {
    checkLetters(context);
  }
  resetCounts();
}

void checkLetters(context) {
  List<String> secretList = secretWord.split('');

  for (int i = 0; i < 5; i++) {
    if (Provider.of<FrameData>(context, listen: false)
            .frames[wordCount][i]
            .letter ==
        secretList[i]) {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFF6aaa64));
    } else if (secretList.contains(
        Provider.of<FrameData>(context, listen: false)
            .frames[wordCount][i]
            .letter)) {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFFc9b458));
    } else {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFF787c7e));
    }
  }
}

void resetCounts() {
  wordCount++;
  letterCount = -1;
}
