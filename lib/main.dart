import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(xylophone());
}

void playnote (int note){
  final player = AudioCache();
  player.play('note$note.wav');
}

Widget buildExpand(Color color ,int note,String  NomNote){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playnote(note) ;
      },
      child: Text(NomNote),

    ),
  );
}
class xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildExpand(Colors.red[100], 1,"Do") ,
                  buildExpand(Colors.red[200], 2,"Re") ,
                  buildExpand(Colors.red[300], 3,"Mi") ,
                  buildExpand(Colors.red[400], 4,"Fa") ,
                  buildExpand(Colors.red[500], 5,"Sol") ,
                  buildExpand(Colors.red[600], 6,"La") ,
                  buildExpand(Colors.red[700], 7,"Si") ,
              ],
            )),
      ),
    );
  }
}
