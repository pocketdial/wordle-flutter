import 'package:flutter/material.dart';

void main() {
  runApp(const WordleApp());
}

class WordleApp extends StatelessWidget {
  const WordleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'WORDLE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WORDLE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RowOfFrames(),
          RowOfFrames(),
        ],
      ),
    );
  }
}

class RowOfFrames extends StatelessWidget {
  const RowOfFrames({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FrameWidget(letter: 't', colour: Colors.white),
        FrameWidget(letter: 'e', colour: Colors.blue),
        FrameWidget(letter: 's', colour: Colors.white),
        FrameWidget(letter: 't', colour: Colors.green),
        FrameWidget(letter: 'o', colour: Colors.white),
      ],
    );
  }
}

class FrameWidget extends StatelessWidget {
  const FrameWidget({Key? key, required this.letter, required this.colour})
      : super(key: key);

  final String letter;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(4.0),
        color: colour,
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(
            fontFamily: 'Arial',
            fontSize: 80,
            color: Colors.white,
            height: 1,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
