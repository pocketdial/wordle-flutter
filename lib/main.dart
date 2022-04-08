import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle_flutter/widgets/row_of_frames.dart';
import 'package:wordle_flutter/widgets/keyboard.dart';
import 'package:wordle_flutter/models/frame_data.dart';
import 'package:wordle_flutter/models/key_data.dart';
import 'game.dart';

void main() {
  runApp(const WordleApp());
}

class WordleApp extends StatelessWidget {
  const WordleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FrameData(),
        ),
        ChangeNotifierProvider(
          create: (context) => KeyData(),
        ),
      ],
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var rowLetterList1 = ['', '', '', '', ''];
  var rowLetterList2 = ['', '', '', '', ''];
  var rowLetterList3 = ['', '', '', '', ''];
  var rowLetterList4 = ['', '', '', '', ''];
  var rowLetterList5 = ['', '', '', '', ''];
  var rowLetterList6 = ['', '', '', '', ''];

  FrameData frameData = FrameData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('WRDL'),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          //height: 5,
          fontSize: 40, fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.repeat,
            color: Colors.black,
          ),
          onPressed: () {
            //showAlert(context, 'Сам перегружай!');
            resetGame(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.help_outline,
              color: Colors.black,
            ),
            onPressed: () {
              showAlert(context,
                  'Правила просты донельзя: серый цвет - буква не угадана, жёлтый цвет - угадана, но не на своём месте, зелёный цвет - буква правильная и на своём месте.');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RowOfFrames(frameData, 0),
                  RowOfFrames(frameData, 1),
                  RowOfFrames(frameData, 2),
                  RowOfFrames(frameData, 3),
                  RowOfFrames(frameData, 4),
                  RowOfFrames(frameData, 5),
                  //oldRowOfFrames(rowLetterList6),
                ],
              ),
            ),
            Expanded(flex: 1, child: Keyboard()),
          ],
        ),
      ),
    );
  }
}

void showAlert(BuildContext context, String alertText) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(content: Text(alertText)));
}
