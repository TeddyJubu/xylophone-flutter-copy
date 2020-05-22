import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //int tone = 1;
  void music(int tingg) {
    final player = AudioCache();
    player.play('note$tingg.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  music(1);
                },
                child: Container(
                  color: Colors.red.shade400,
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 25, 10, 0),
                ),
              ),
              FlatButton(
                onPressed: () {
                  music(2);
                },
                child: Container(
                  color: Colors.pink.shade400,
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                ),
              ),
              FlatButton(
                onPressed: () {
                  music(3);
                },
                child: Container(
                  color: Colors.deepPurple.shade400,
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                ),
              ),
              FlatButton(
                onPressed: () {
                  music(4);
                },
                child: Container(
                  color: Colors.blue.shade400,
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                ),
              ),
              FlatButton(
                onPressed: () {
                  music(5);
                },
                child: Container(
                  color: Colors.teal.shade400,
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                ),
              ),
              FlatButton(
                onPressed: () {
                  music(6);
                },
                child: Container(
                  color: Colors.yellow.shade400,
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                ),
              ),
              FlatButton(
                onPressed: () {
                  music(7);
                },
                child: Container(
                  color: Colors.orange.shade400,
                  height: 50.0,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
