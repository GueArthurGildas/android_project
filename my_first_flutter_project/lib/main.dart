import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Désactive l'étiquette DEBUG
      home: Scaffold(
        appBar: AppBar(
          title: Text("je suis riche"),
          backgroundColor: Colors.orange,
        ),
        body : Center(
          child: Image(
            image:AssetImage("images/diamond.png")
          ),
        )
      )
  ));
}


