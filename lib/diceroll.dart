import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  List l1=[
    "assets/image/1.png",
    "assets/image/2.png",
    "assets/image/3.png",
    "assets/image/4.png",
    "assets/image/5.png",
    "assets/image/6.png",
  ];
  List l2=[
    "assets/image/1.png",
    "assets/image/2.png",
    "assets/image/3.png",
    "assets/image/4.png",
    "assets/image/5.png",
    "assets/image/6.png",
  ];
  int i=0;
  int j=0;
  int ans=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sum of Dice No=$ans"),
            Image.asset("${l1[i]}"),.

            Image.asset("${l1[j]}"),
            ElevatedButton(onPressed: () {
              Random rnd= Random();
              int z= rnd.nextInt(6);
              int y= rnd.nextInt(6);
              setState(() {
                j=z;
                i=y;
                 ans = j + i+2;
              });
            }, child: Text("Roll")),
          ],
        ),
      ),
    );
  }
}
