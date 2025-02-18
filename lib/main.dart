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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(Colors.red, 'note1.wav'),
              Button(Colors.orange, 'note2.wav'),
              Button(Colors.yellow, 'note3.wav'),
              Button(Colors.greenAccent, 'note4.wav'),
              Button(Colors.green, 'note5.wav'),
              Button(Colors.blueAccent, 'note6.wav'),
              Button(Colors.indigoAccent, 'note7.wav')
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Color color;
  final String audioFile;

  Button(this.color, this.audioFile);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(this.color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ))),
        onPressed: () {
          playSound();
        },
        child: Text(''),
      ),
    );
  }

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(this.audioFile));
  }
}
