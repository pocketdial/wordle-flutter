import 'package:flutter/material.dart';
import 'keyboard.dart';

void main() {
  runApp(const WordleApp());
}

class WordleApp extends StatelessWidget {
  const WordleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //title: 'WORDLE',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(title: 'WRDL'),
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
  var rowList1 = ['', '', '', '', ''];
  var rowList2 = ['', '', '', '', ''];
  var rowList3 = ['', '', '', '', ''];
  var rowList4 = ['', '', '', '', ''];
  var rowList5 = ['', '', '', '', ''];
  var rowList6 = ['', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    setState(() {
      rowList1 = letterList1;
      rowList2 = letterList2;
      rowList3 = letterList3;
      rowList4 = letterList4;
      rowList5 = letterList5;
      rowList6 = letterList6;
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
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
            showAlert(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.help_outline,
              color: Colors.black,
            ),
            onPressed: () {
              showAlert(context);
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
              child: Container(
                //margin: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RowOfFrames(letterList: rowList1),
                    RowOfFrames(letterList: rowList2),
                    RowOfFrames(letterList: rowList3),
                    RowOfFrames(letterList: rowList4),
                    RowOfFrames(letterList: rowList5),
                    RowOfFrames(letterList: rowList6),
                  ],
                ),
                //color: Colors.grey[200],
                //alignment: Alignment.center,
              ),
            ),
            Expanded(flex: 1, child: keyboard()

                // Container(
                //   //color: Colors.blue[600],
                //   child: const Center(
                //     child: Text(
                //       'KEYBOARD',
                //       style: TextStyle(
                //         fontSize: 80,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                //   color: Colors.grey[300],
                // ),
                ),
          ],
        ),
      ),
    );
  }
}

class RowOfFrames extends StatelessWidget {
  const RowOfFrames({Key? key, required this.letterList}) : super(key: key);

  final List letterList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          FrameWidget(letter: letterList[0], colour: Colors.white),
          FrameWidget(letter: letterList[1], colour: Colors.white),
          FrameWidget(letter: letterList[2], colour: Colors.white),
          FrameWidget(letter: letterList[3], colour: Colors.white),
          FrameWidget(letter: letterList[4], colour: Colors.white),
        ],
      ),
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
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        //width: 70.0,
        //height: 70.0,
        margin: const EdgeInsets.all(3.0),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(4.0),
          color: colour,
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            letter,
            style: const TextStyle(
              fontFamily: 'Arial',
              //fontSize: 80,
              color: Colors.black,
              //height: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

void showAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => const AlertDialog(
            content: Text("Shuffle"),
          ));
}
