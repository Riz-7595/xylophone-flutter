import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Expanded Key(Color color, int n) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('note$n.wav'));
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Key(Colors.red, 1),
              Key(Colors.orange, 2),
              Key(Colors.yellow, 3),
              Key(Colors.green, 4),
              Key(Colors.blue, 5),
              Key(Colors.indigo, 6),
              Key(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
