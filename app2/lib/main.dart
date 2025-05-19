import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MaterialApp(home: SimpleAudioPlayer()));
}

class SimpleAudioPlayer extends StatelessWidget {
  const SimpleAudioPlayer({super.key});

  //*******
  void playSound(nameSong) async{
      final player = AudioPlayer();
      await  player.play(AssetSource(nameSong));
  }

  //*******
   Widget buildKey(Color col, String mySong){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(mySong);
        },
        style: TextButton.styleFrom(
          backgroundColor: col,
          minimumSize: const Size(double.infinity, 50), // Largeur max, hauteur 50
        ),
        child: const Text(
          'Lire le son',
          style: TextStyle(color: Colors.black, fontSize: 16), // Texte en noir pour bien ressortir sur jaune
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text('Lecture Audio Simple')),
      body: Column(
        children: [
          buildKey(Colors.teal,"Enregistrement.m4a"),
          buildKey(Colors.yellow, "note3.wav"),


        ],
      ),
    );
  }
}
