import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade900,
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceNumber = 1; // Use int for clarity

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text widget with "Dice App" title
          Text(
            'Dice App',
            style: TextStyle(
                fontSize: 32.0, // Adjust font size as needed
                color: Colors.white,
                fontFamily: 'Pacifico' // Adjust color as needed
                ),
          ),
          SizedBox(height: 20.0), // Add some vertical spacing

          // Container with TextButton and Image
          Container(
            height: 150.0,
            width: 150.0,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green.shade900,
              ),
              onPressed: () {
                setState(() {
                  diceNumber = Random().nextInt(6) + 1;
                  print('$diceNumber pressed');
                  
                });
              },
              child: Image.asset(
                'images/dice$diceNumber.png', // Ensure correct image path
              ),
            ),
          ),

          // Text widget to display dice number below the button
          Text(
            'You rolled a $diceNumber!',
            style: TextStyle(
                fontSize: 24.0, // Adjust font size as needed
                color: Colors.white,
                fontFamily: 'Pacifico' // Adjust color as needed
                ),
          ),
        ],
      ),
    );
  }
}
