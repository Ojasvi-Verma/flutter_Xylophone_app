import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playnote(note) {
    final player = AudioCache();
    player.play(note);
  }

  Widget buildnote({Color color, String note}) {
    return Expanded(
      child: Card(
        color: color,
        child: FlatButton(
          minWidth: double.infinity,
          onPressed: () {
            playnote(note);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildnote(color: Colors.deepPurple, note: 'note1.wav'),
                buildnote(color: Colors.teal, note: 'note2.wav'),
                buildnote(color: Colors.blueAccent, note: 'note3.wav'),
                buildnote(color: Colors.indigoAccent, note: 'note4.wav'),
                buildnote(color: Colors.redAccent, note: 'note5.wav'),
                buildnote(color: Colors.orange, note: 'note6.wav'),
                buildnote(color: Colors.yellowAccent, note: 'note7.wav'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
