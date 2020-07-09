import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
              child: Text('Click me!!!'),
              onPressed: () {
                player.play('note7.wav');
//                player.play('assets/note1.wav');
              },
            ),
          ),
        ),
      ),
    );
  }
}
