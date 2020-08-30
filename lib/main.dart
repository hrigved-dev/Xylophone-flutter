import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }
  Expanded buildKey({Color color, int i}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(i);
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
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                buildKey(color: Colors.red, i: 1),
                buildKey(color: Colors.orange, i: 2),
                buildKey(color: Colors.yellow, i: 3),
                buildKey(color: Colors.green, i: 4),
                buildKey(color: Colors.blue, i: 5),
                buildKey(color: Colors.indigo, i: 6),
                buildKey(color: Colors.purple, i: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
