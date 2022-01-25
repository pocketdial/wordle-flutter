import 'package:flutter/material.dart';

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
        },
        child: Text(letter),
      ),
    ),
  );
}

var letterList1 = [
  'A',
  'V',
  'C',
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
