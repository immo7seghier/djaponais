import 'package:flutter/material.dart';
import 'package:djaponais/item/ensemble.dart';
import 'package:djaponais/item/elements.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  List<Ensemble> ensembles = [
    Ensemble(
        entext: "red",
        image: "assets/images/colors/color_red.png",
        jptext: "akai",
        sound: "sounds/colors/brown.wav"),
    Ensemble(
        entext: "black",
        image: "assets/images/colors/color_black.png",
        jptext: "kuroi",
        sound: "sounds/colors/black.wav"),
    Ensemble(
        entext: "green",
        image: "assets/images/colors/color_green.png",
        jptext: "midori",
        sound: "sounds/colors/green.wav"),
    Ensemble(
        entext: "brown",
        image: "assets/images/colors/color_brown.png",
        jptext: "kasshoku",
        sound: "sounds/colors/brown.wav"),
    Ensemble(
        entext: "white",
        image: "assets/images/colors/color_white.png",
        jptext: "shiroi",
        sound: "sounds/colors/white.wav"),
    Ensemble(
        entext: "yellow",
        image: "assets/images/colors/yellow.png",
        jptext: "kiiro",
        sound: "sounds/colors/yellow.wav"),
    Ensemble(
        entext: "dusty yellow",
        image: "assets/images/colors/color_dusty_yellow.png",
        jptext: "dusty yellow",
        sound: "sounds/colors/dusty yellow.wav"),
    Ensemble(
        entext: "gray",
        image: "assets/images/colors/color_gray.png",
        jptext: "haiiro",
        sound: "sounds/colors/gray.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("colors"),
      ),
      body: ListView.builder(
        itemCount: ensembles.length,
        itemBuilder: (context, index) {
          return Elements(
              ensemble: ensembles[index],
              color: Colors.green,
              color2: Color.fromARGB(255, 4, 255, 209));
        },
      ),
    );
  }
}
