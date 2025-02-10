import 'dart:math';
import 'package:flutter/material.dart';

//Main Function.
void main(){
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          //Background Color of the App.
          backgroundColor: Colors.deepPurple[300],
          //AppBar has been created.
          appBar: AppBar(
            title: Center(
              child: Text('Dicee',
              style: TextStyle(
              fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            ),
            backgroundColor: Colors.deepPurple[900],
          ),
          //Set the main content to the main widget
          body: DiceOne(),
        ),
      ),
    ),
  );
}
// StatefulWidget for the dice game
// Allows the widget to maintain state that can change depending on the circumstances
class DiceOne extends StatefulWidget {
  const DiceOne({super.key});

  @override
  State<DiceOne> createState() => _DiceOneState();
}
//State for the dice game
class _DiceOneState extends State<DiceOne> {
  int dice= 1;
  int dice2= 1;
  @override
  Widget build(BuildContext context) {
//GestureDetector is being added to handel all the taps
    return GestureDetector( onTap: () {
      //SetState triggers the rebuild of the app with new dice values
      setState(() {
        //Generating random numbers between 1 and 6 in both the dices
        dice=Random().nextInt(6)+1;
        dice2=Random().nextInt(6)+1;
        print(dice);
      });
    },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          // Row widget to arrange dice images horizontally
          child: Row(
            children: [
              //First dice image
              Expanded(
                child: Container(
                  child: Image(
                    //Loading of the image required for the game app
                    image: AssetImage('images/dice$dice.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              //Second dice image
              Expanded(
                child: Container(
                  child: Image(
                    //Loading of the image required for the game app
                    image: AssetImage('images/dice$dice2.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
