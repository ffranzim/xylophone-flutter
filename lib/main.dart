import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(soundNumber: 1, color: Colors.red),
              buildButton(soundNumber: 2, color: Colors.orange),
              buildButton(soundNumber: 3, color: Colors.yellow),
              buildButton(soundNumber: 4, color: Colors.green),
              buildButton(soundNumber: 5, color: Colors.teal),
              buildButton(soundNumber: 6, color: Colors.blue),
              buildButton(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildButton(
      {@required int soundNumber, @required MaterialColor color}) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$soundNumber.wav');
        },
      ),
    );
  }
}
