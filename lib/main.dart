import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey(int soundN, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundN);
        },
        color: color,
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
              buildKey(1, Colors.blue),
              buildKey(2, Colors.green),
              buildKey(3, Colors.red),
              buildKey(4, Colors.yellow),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.purple),
              buildKey(7, Colors.deepOrange),
            ],
          ),
        ),
      ),
    );
  }
}
