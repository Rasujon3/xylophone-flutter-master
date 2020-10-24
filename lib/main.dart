import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color,int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red,soundNumber: 1),//1

              buildKey(color: Colors.green,soundNumber: 2),//2

              buildKey(color: Colors.black,soundNumber: 3),//3

              buildKey(color: Colors.blueAccent,soundNumber: 4),//4

              buildKey(color: Colors.orange,soundNumber: 5),//5

              buildKey(color: Colors.yellow,soundNumber: 6),//6

              buildKey(color: Colors.pink,soundNumber: 7),//7
            ],
          ),

        ),
      ),
    );
  }
}

