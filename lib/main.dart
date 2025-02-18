import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        body: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('note1.wav'));
              print('i got clicked >>>>>>>>>>>>>>');
            },
            child: Text('click me')),
      ),
    );
  }
}
