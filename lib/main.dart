import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //int tone = 1;
  void music(int tingg) {
    final player = AudioCache();
    player.play('note$tingg.wav');
  }

  Expanded buildKey({int tone, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          music(tone);
        },
        child: Container(
          color: color,
          margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.,
            children: <Widget>[
              buildKey(
                tone: 1,
                color: Colors.pink.shade400,
              ),
              buildKey(
                tone: 2,
                color: Colors.red.shade400,
              ),
              buildKey(
                tone: 3,
                color: Colors.orange.shade400,
              ),
              buildKey(
                tone: 4,
                color: Colors.yellow.shade400,
              ),
              buildKey(
                tone: 5,
                color: Colors.green.shade400,
              ),
              buildKey(
                tone: 6,
                color: Colors.blue.shade400,
              ),
              buildKey(
                tone: 7,
                color: Colors.indigo.shade400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
