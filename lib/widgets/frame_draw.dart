import 'package:flutter/material.dart';

Widget frameDraw(String letter, Color colour, Color fontColour) {
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
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 40,
            color: colour == Colors.white
                ? Colors.black
                : Colors.white, //fontColour,
            fontWeight: FontWeight.bold,
            //height: 1,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
