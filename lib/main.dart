import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: Container(
        //  margin: EdgeInsets.only(left: soundNumber, right: soundNumber),
        //margin: new EdgeInsets.symmetric(horizontal: 20.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: color,

            child: Row(
              children: <Widget>[
            Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Icon(
              Icons.add_circle,
              color: Colors.black,

            ),
            ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(260, 0, 0, 0),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.black,

                  ),
                ),
              ],
            ),

            onPressed: () {
              playSound(soundNumber);
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
