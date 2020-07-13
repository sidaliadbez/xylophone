import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(xylophone());
}
class xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
                children: <Widget>[
                  FlatButton(
                      color: Colors.red[100],
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                  },
                  child: Text("HELLO"),

                ),
                  FlatButton(
                      color: Colors.red[200],
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: Text("HELLO")),
                  FlatButton(
                      color: Colors.red[300],
                      onPressed: () {
                        final player = AudioCache();
                        player.play('note3.wav');
                      },
                      child: Text("HELLO")),
                  FlatButton(
                      color: Colors.red[400],
                      onPressed: () {
                        final player = AudioCache();
                        player.play('note4.wav');
                      },
                      child: Text("HELLO")),
                  FlatButton(
                      color: Colors.red[500],
                      onPressed: () {
                        final player = AudioCache();
                        player.play('note5.wav');
                      },
                      child: Text("HELLO")),
                  FlatButton(
                      color: Colors.red[600],
                      onPressed: () {
                        final player = AudioCache();
                        player.play('note6.wav');
                      },
                      child: Text("HELLO")),
                  FlatButton(
                      color: Colors.red[700],
                      onPressed: () {
                        final player = AudioCache();
                        player.play('note7.wav');
                      },
                      child: Text("HELLO"))
              ],
            )),
      ),
    );
  }
}
