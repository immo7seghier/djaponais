import 'package:flutter/material.dart';
import 'package:djaponais/item/ensemble.dart';
import 'package:djaponais/item/elements.dart';

class Numbers extends StatelessWidget {
  Numbers({super.key});
  List<Ensemble> ensembles = [
    Ensemble(
        entext: "one",
        image: "assets/images/numbers/number_one.png",
        jptext: "ichi",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Ensemble(
        entext: "two",
        image: "assets/images/numbers/number_two.png",
        jptext: "ni",
        sound: "sounds/numbers/number_two_sound.mp3"),
    Ensemble(
        entext: "three",
        image: "assets/images/numbers/number_three.png",
        jptext: "san",
        sound: "sounds/numbers/number_three_sound.mp3"),
    Ensemble(
        entext: "four",
        image: "assets/images/numbers/number_four.png",
        jptext: "shi",
        sound: "sounds/numbers/number_four_sound.mp3"),
    Ensemble(
        entext: "five",
        image: "assets/images/numbers/number_five.png",
        jptext: "go",
        sound: "sounds/numbers/number_five_sound.mp3"),
    Ensemble(
        entext: "six",
        image: "assets/images/numbers/number_six.png",
        jptext: "roku",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Ensemble(
        entext: "seven",
        image: "assets/images/numbers/number_seven.png",
        jptext: "shichi",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    Ensemble(
        entext: "eight",
        image: "assets/images/numbers/number_eight.png",
        jptext: "hashi",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    Ensemble(
        entext: "nine",
        image: "assets/images/numbers/number_nine.png",
        jptext: "ku",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Ensemble(
        entext: "ten",
        image: "assets/images/numbers/number_ten.png",
        jptext: "ju",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("NUMBERS"),
        ),
        body: ListView.builder(
          itemCount: ensembles.length,
          itemBuilder: (context, index) {
            return Elements(
              ensemble: ensembles[index],
              color: Colors.amberAccent,
              color2: Color.fromARGB(255, 244, 151, 43),
            );
          },
        ));
  }
}
