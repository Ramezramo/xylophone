import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];
  void playsound(int num){
    print("ok");
    final player = AudioPlayer();
    player.play(AssetSource("note$num.wav"));
  }
  Widget buldkey(int keyval){

    return
    Expanded(
      child: Container(
        color:colors[keyval-1],
        child: TextButton(

          onPressed: (){
            playsound(keyval);

          },
          child: Center(
            child: Text(
              'sound $keyval',
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) =>

    MaterialApp(

        home: Scaffold(
          backgroundColor: Colors.black26,

        body: SafeArea(
        child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              buldkey(1),
              buldkey(2),
              buldkey(3),
              buldkey(4),
              buldkey(5),
              buldkey(6),
              buldkey(7),



            ],
          ),
        ),
      ),
        )
    );
  }

