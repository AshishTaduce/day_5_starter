import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloPhone());
AudioPlayer audioPlayer = AudioPlayer();

class XyloPhone extends StatelessWidget {
  @override
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
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      AudioCache player = AudioCache();
                      player.play('note3.wav');
                    },
                    child: Container(
                      color: Colors.yellow,

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
                      player.play('note4.wav');
                    },
                    child: Container(
                      color: Colors.green,

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
                      player.play('note5.wav');
                    },
                    child: Container(
                      color: Colors.lightBlueAccent,

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
                      player.play('note6.wav');
                    },
                    child: Container(
                      color: Colors.indigo,

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
                      player.play('note7.wav');
                    },
                    child: Container(
                      color: Colors.purple,

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
}
