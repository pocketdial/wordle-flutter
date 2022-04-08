import 'package:flutter/material.dart';
import 'package:wordle_flutter/widgets/row_of_frames.dart';
import 'package:wordle_flutter/widgets/keyboard.dart';
import 'package:wordle_flutter/models/frame_data.dart';
import 'package:wordle_flutter/models/key_data.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'package:wordle_flutter/models/words.dart';
import 'package:wordle_flutter/models/words_full.dart';

int wordCount = 0;
int letterCount = -1;
String secretWord = Words().getRandomWord();
//String secretWord = 'ПАПКА';

void wordIncrement() {
  wordCount++;
}

void letterIncrement() {
  if (letterCount < 4) {
    letterCount++;
  }
}

void checkWord(context) {
  String currentWord = Provider.of<FrameData>(context, listen: false)
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
          .letter;
  if (!FullWords().isWordExists(currentWord)) {
    showAlert(context, 'Не выдумывай, пожалуйста, слова!');
    // for (int i = 0; i < 5; i++) {
    //   Provider.of<FrameData>(context, listen: false).changeLetter(
    //       Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
    //       '');
    // }
    return;
  }
  if (currentWord == secretWord) {
    Provider.of<FrameData>(context, listen: false).changeRowWinColor();
    //print('weee!');
    showAlert(context, 'Вы только посмотрите! Молодец!');
  } else {
    checkLetters(context);
  }
  resetCounts();
}

void checkLetters(context) {
  if (wordCount == 5) {
    showAlert(context, 'Ну, почти! Загаданное слово: $secretWord');
  }
  List<String> secretList = secretWord.split('');

  for (int i = 0; i < 5; i++) {
    if (Provider.of<FrameData>(context, listen: false)
            .frames[wordCount][i]
            .letter ==
        secretList[i]) {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFF6aaa64));
      Provider.of<KeyData>(context, listen: false).changeColorOk(
          Provider.of<FrameData>(context, listen: false)
              .frames[wordCount][i]
              .letter);
      secretList[i] = '';
    } else if (secretList.contains(
        Provider.of<FrameData>(context, listen: false)
            .frames[wordCount][i]
            .letter)) {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFFc9b458));
      Provider.of<KeyData>(context, listen: false).changeColorAlmost(
          Provider.of<FrameData>(context, listen: false)
              .frames[wordCount][i]
              .letter);
    } else {
      Provider.of<FrameData>(context, listen: false).changeColor(
          Provider.of<FrameData>(context, listen: false).frames[wordCount][i],
          const Color(0xFF787c7e));
      Provider.of<KeyData>(context, listen: false).changeColorUsed(
          Provider.of<FrameData>(context, listen: false)
              .frames[wordCount][i]
              .letter);
    }
  }
}

void resetCounts() {
  wordCount++;
  letterCount = -1;
}

void resetGame(context) {
  wordCount = 0;
  letterCount = -1;
  Provider.of<FrameData>(context, listen: false).resetFrameData();
  Provider.of<KeyData>(context, listen: false).resetKeysColors();
  secretWord = Words().getRandomWord();
}
