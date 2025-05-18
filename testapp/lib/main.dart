import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
              child: Text('Dicee', style: TextStyle(color:Colors.white),
          )
          ),
          backgroundColor: Colors.red,
        ),
        body: dicePage(),
      ),
    ),
  );
}

class dicePage extends StatefulWidget {
  const dicePage({super.key});

  @override
  State<dicePage> createState() => _dicePageState();
}

class _dicePageState extends State<dicePage> {

  var leftDeeceNuber=1 ;
  var rightDeeceNuber=1 ;

  var random = Random();


  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(

                onPressed: () {
                  setState(() {

                    rightDeeceNuber  = random.nextInt(6)+1;



                  });

                  print(rightDeeceNuber);

                },

                child: Image.asset("images/dice$leftDeeceNuber.png"),
              )
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {

                    setState(() {


                      leftDeeceNuber  = random.nextInt(6)+1;



                    });

                  },
                  child: Image.asset("images/dice$rightDeeceNuber.png")
              )
          ),

        ],
      ),
    );
  }

}


