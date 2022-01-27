import 'package:flutter/material.dart';
//import 'keyboard.dart';

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

  void updList() {
    setState(() {
      rowList1 = letterList1;
      rowList2 = letterList2;
      rowList3 = letterList3;
      rowList4 = letterList4;
      rowList5 = letterList5;
      rowList6 = letterList6;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    // RowOfFrames(letterList: rowList1),
                    // RowOfFrames(letterList: rowList2),
                    // RowOfFrames(letterList: rowList3),
                    // RowOfFrames(letterList: rowList4),
                    // RowOfFrames(letterList: rowList5),
                    // RowOfFrames(letterList: rowList6),
                    rowOfFrames(rowList1),
                    rowOfFrames(rowList2),
                    rowOfFrames(rowList3),
                    rowOfFrames(rowList4),
                    rowOfFrames(rowList5),
                    rowOfFrames(rowList6),
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

  Widget rowOfFrames(List letterList) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          frameDraw(letterList[0], Colors.white),
          frameDraw(letterList[1], Colors.white),
          frameDraw(letterList[2], Colors.white),
          frameDraw(letterList[3], Colors.white),
          frameDraw(letterList[4], Colors.white),
        ],
      ),
    );
  }

  Widget frameDraw(String letter, Color colour) {
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
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              //height: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget keyboard() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.,
          children: <Widget>[
            key('Й', Colors.black, Colors.grey.shade300),
            key('Ц', Colors.black, Colors.grey.shade300),
            key('У', Colors.black, Colors.grey.shade300),
            key('К', Colors.black, Colors.grey.shade300),
            key('Е', Colors.black, Colors.grey.shade300),
            key('Н', Colors.black, Colors.grey.shade300),
            key('Г', Colors.black, Colors.grey.shade300),
            key('Ш', Colors.black, Colors.grey.shade300),
            key('Щ', Colors.black, Colors.grey.shade300),
            key('З', Colors.black, Colors.grey.shade300),
            key('Х', Colors.black, Colors.grey.shade300),
            key('Ъ', Colors.black, Colors.grey.shade300),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            key('Ф', Colors.black, Colors.grey.shade300),
            key('Ы', Colors.black, Colors.grey.shade300),
            key('В', Colors.black, Colors.grey.shade300),
            key('А', Colors.black, Colors.grey.shade300),
            key('П', Colors.black, Colors.grey.shade300),
            key('Р', Colors.black, Colors.grey.shade300),
            key('О', Colors.black, Colors.grey.shade300),
            key('Л', Colors.black, Colors.grey.shade300),
            key('Д', Colors.black, Colors.grey.shade300),
            key('Ж', Colors.black, Colors.grey.shade300),
            key('Э', Colors.black, Colors.grey.shade300),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //key('ENTER', Colors.black, Colors.grey),
            Container(
              margin: const EdgeInsets.all(5),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(8, 16.0, 8, 16),
                  primary: Colors.black,
                  backgroundColor: Colors.grey.shade300,
                  //minimumSize: const Size(45, 1),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Text('ENTER'),
              ),
            ),
            key('Я', Colors.black, Colors.grey.shade300),
            key('Ч', Colors.black, Colors.grey.shade300),
            key('С', Colors.black, Colors.grey.shade300),
            key('М', Colors.black, Colors.grey.shade300),
            key('И', Colors.black, Colors.grey.shade300),
            key('Т', Colors.black, Colors.grey.shade300),
            key('Ь', Colors.black, Colors.grey.shade300),
            key('Б', Colors.black, Colors.grey.shade300),
            key('Ю', Colors.black, Colors.grey.shade300),
            //key('DEL', Colors.black, Colors.grey),
            Container(
              margin: const EdgeInsets.all(5),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(8, 16.0, 8, 16),
                    primary: Colors.black,
                    backgroundColor: Colors.grey.shade300,
                    //minimumSize: const Size(45, 1),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.backspace_outlined) //Text('DEL'),
                  ),
            ),
          ],
        ),
        // Row(
        //   children: <Widget>[
        //     Expanded(
        //       child: RaisedButton(
        //         child: Text('Approve'),
        //         onPressed: () => null,
        //       ),
        //     ),
        //     Expanded(
        //       child: RaisedButton(
        //         child: Text('Reject'),
        //         onPressed: () => null,
        //       ),
        //     ),
        //     Expanded(
        //       child: RaisedButton(
        //         child: Text('Need Revise'),
        //         onPressed: () => null,
        //       ),
        //     )
        //   ],
        // ),
      ],
    );
  }

  Widget key(String letter, Color keyColour, Color textColour) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(8, 16.0, 8, 16),
            primary: keyColour,
            backgroundColor: textColour,
            //minimumSize: const Size(45, 1),
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            addLetter(letter);
            updList();
          },
          child: Text(letter),
        ),
      ),
    );
  }

  var letterList1 = [
    '',
    '',
    '',
    '',
    '',
  ];
  var letterList2 = [
    '',
    '',
    '',
    '',
    '',
  ];
  var letterList3 = [
    '',
    '',
    '',
    '',
    '',
  ];
  var letterList4 = [
    '',
    '',
    '',
    '',
    '',
  ];
  var letterList5 = [
    '',
    '',
    '',
    '',
    '',
  ];
  var letterList6 = [
    '',
    '',
    '',
    '',
    '',
  ];
  var indexList = 1;
  var indexLetterList1 = 0;
  var indexLetterList2 = 0;
  var indexLetterList3 = 0;
  var indexLetterList4 = 0;
  var indexLetterList5 = 0;
  var indexLetterList6 = 0;

  void addLetter(String letter) {
    if (indexList == 1) {
      letterList1[indexLetterList1] = letter;
      indexLetterList1++;
      if (indexLetterList1 == 5) {
        indexList++;
      }
    } else if (indexList == 2) {
      letterList2[indexLetterList2] = letter;
      indexLetterList2++;
      if (indexLetterList2 == 5) {
        indexList++;
      }
    } else if (indexList == 3) {
      letterList3[indexLetterList3] = letter;
      indexLetterList3++;
      if (indexLetterList3 == 5) {
        indexList++;
      }
    } else if (indexList == 4) {
      letterList4[indexLetterList4] = letter;
      indexLetterList4++;
      if (indexLetterList4 == 5) {
        indexList++;
      }
    } else if (indexList == 5) {
      letterList5[indexLetterList5] = letter;
      indexLetterList5++;
      if (indexLetterList5 == 5) {
        indexList++;
      }
    } else if (indexList == 6) {
      letterList6[indexLetterList6] = letter;
      indexLetterList6++;
      if (indexLetterList6 == 5) {
        indexList++; //TODO
      }
    }

    print(letterList1 + letterList2 + letterList3 + letterList4 + letterList5);
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
