import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


//
void main() => runApp(CeremonialMusicGuide());
// the code above is the same as void main() {runApp(XylophoneApp())
//
// }; the arrow is
// known as Fat Arrow ; its used a the function body used only as a single line of code.


class CeremonialMusicGuide extends StatelessWidget {
  void soundTitle(String soundName){
    print('soundName');
  }
  void playSound(int soundNumber) {
    final player = AudioCache();

    // this creates the player
    player.play('note$soundNumber.wav');
    print('CeremonialMusicGuide Btn pressed: note$soundNumber.wav');
  }
/*
// Defined by buildKey in the input method '()': use the '{}' in the initialization:
// has data type of Color and soundNumber for the notes
*/

  Expanded buildKey({Color color, String soundName ,int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(soundName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.teal, soundNumber: 1, soundName: "test 1"),
              buildKey(color: Colors.green, soundNumber: 2, soundName: "test 2"),
              buildKey(color: Colors.lightGreen, soundNumber: 3, soundName: "test 3"),
              buildKey(color: Colors.lime, soundNumber: 4, soundName: "test 4"),
              buildKey(color: Colors.yellow, soundNumber: 5, soundName: "test 5"),
              buildKey(color: Colors.amber, soundNumber: 6, soundName: "test 6"),
              buildKey(color: Colors.orange, soundNumber: 7, soundName: "test 500"),
            ],
          ),
        ),
      ),
    );
  }
}
