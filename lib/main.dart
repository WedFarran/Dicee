import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dicee());
}

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int diceNumber1 = 1;
  int diceNumber2 = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        diceNumber1 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('assets/images/dice$diceNumber1.png')),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        diceNumber2 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('assets/images/dice$diceNumber2.png')),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
