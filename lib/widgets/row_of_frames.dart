import 'package:flutter/material.dart';
import 'package:wordle_flutter/widgets/frame_draw.dart';
import 'package:wordle_flutter/models/frame_data.dart';
import 'package:provider/provider.dart';

//Widget rowOfFrames(FrameData frameData) {
class RowOfFrames extends StatelessWidget {
  FrameData frameData;
  int wordCount;

  RowOfFrames(this.frameData, this.wordCount);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][0]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][0]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][0]
                  .fontColour),
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][1]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][1]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][1]
                  .fontColour),
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][2]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][2]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][2]
                  .fontColour),
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][3]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][3]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][3]
                  .fontColour),
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][4]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][4]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][4]
                  .fontColour),
        ],
      ),
    );
  }
}
// Widget oldRowOfFrames(List letterList) {
//   return Expanded(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       //crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         frameDraw(letterList[0], Colors.white, Colors.black),
//         frameDraw(letterList[1], Colors.white, Colors.black),
//         frameDraw(letterList[2], Colors.white, Colors.black),
//         frameDraw(letterList[3], Colors.white, Colors.black),
//         frameDraw(letterList[4], Colors.white, Colors.black),
//       ],
//     ),
//   );
// }
