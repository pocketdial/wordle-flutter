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
          key('Q', Colors.black, Colors.grey.shade300),
          key('W', Colors.black, Colors.grey.shade300),
          key('E', Colors.black, Colors.grey.shade300),
          key('R', Colors.black, Colors.grey.shade300),
          key('T', Colors.black, Colors.grey.shade300),
          key('Y', Colors.black, Colors.grey.shade300),
          key('U', Colors.black, Colors.grey.shade300),
          key('I', Colors.black, Colors.grey.shade300),
          key('O', Colors.black, Colors.grey.shade300),
          key('P', Colors.black, Colors.grey.shade300),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          key('A', Colors.black, Colors.grey.shade300),
          key('S', Colors.black, Colors.grey.shade300),
          key('D', Colors.black, Colors.grey.shade300),
          key('F', Colors.black, Colors.grey.shade300),
          key('G', Colors.black, Colors.grey.shade300),
          key('H', Colors.black, Colors.grey.shade300),
          key('J', Colors.black, Colors.grey.shade300),
          key('K', Colors.black, Colors.grey.shade300),
          key('L', Colors.black, Colors.grey.shade300),
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
              child: Text('ENTER'),
            ),
          ),
          key('Z', Colors.black, Colors.grey.shade300),
          key('X', Colors.black, Colors.grey.shade300),
          key('C', Colors.black, Colors.grey.shade300),
          key('V', Colors.black, Colors.grey.shade300),
          key('B', Colors.black, Colors.grey.shade300),
          key('N', Colors.black, Colors.grey.shade300),
          key('M', Colors.black, Colors.grey.shade300),
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
                child: Icon(Icons.backspace_outlined) //Text('DEL'),
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
        onPressed: () {},
        child: Text(letter),
      ),
    ),
  );
}
