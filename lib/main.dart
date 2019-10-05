import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
import 'package:random_color/random_color.dart';

void main() => runApp(XyloPhone());
AudioPlayer audioPlayer = AudioPlayer();

Widget xylo() {
  RandomColor _randomColor = RandomColor();
  Color _color = _randomColor.randomColor(
      colorBrightness: ColorBrightness.light,
  );
  final _random = new Random();
  int sound(int min, int max) => min + _random.nextInt(max - min);
  Expanded c = Expanded(
    flex: 1,
    child: InkWell(
      onTap: () {
        AudioCache player = AudioCache();
        player.play('note${sound(1, 8)}.wav');
      },
      child: Container(
        color: _color,

//                        AudioCache player = AudioCache();
//                        player.play('note1.wav');
      ),
    ),
  );
  return c;
}

List initiate() {
  List size = [1, 2, 3, 4, 5, 6, 7];
  List widgets = [];
  for (int x in size) {
    widgets.add(xylo());
  }
  return widgets;
}

Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    AudioCache player = AudioCache();
                    player.play('note1.wav');
                  },
                  child: Container(
                    color: Colors.red,

//                        AudioCache player = AudioCache();
//                        player.play('note1.wav');
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    AudioCache player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: Container(
                    color: Colors.orange,

//                        AudioCache player = AudioCache();
//                        player.play('note1.wav');
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class XyloPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                xylo(),
                xylo(),
                xylo(),
                xylo(),
                xylo(),
                xylo(),
                xylo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
