import 'package:djaponais/item/phrases_item_page.dart';
import 'package:flutter/material.dart';
import 'package:djaponais/item/ensemble.dart';
import 'package:djaponais/item/elements.dart';

class Phrasespage extends StatelessWidget {
  Phrasespage({super.key});
  List<Ensemble> ensembles = [
    Ensemble(
        entext: "what is your name",
        image: "assets/images/colors/color_red.png",
        jptext: "nanto iu o namae desu ka",
        sound: "sounds/phrases/what_is_your_name.wav"),
    Ensemble(
        entext: "where are you going",
        image: "assets/images/colors/color_black.png",
        jptext: "doko ni ikiba masu ka",
        sound: "sounds/phrases/where_are_you_going.wav"),
    Ensemble(
        entext: "yes im coming",
        image: "assets/images/colors/color_green.png",
        jptext: "hai 、 watashi wa rai te i masu",
        sound: "sounds/phrases/yes_im_coming.wav"),
    Ensemble(
        entext: "programming is easy",
        image: "assets/images/colors/color_brown.png",
        jptext: "programming ga kantan",
        sound: "sounds/phrases/programming_is_easy.wav"),
    Ensemble(
        entext: "i love programming",
        image: "assets/images/colors/color_white.png",
        jptext: "programming ga daisuki",
        sound: "sounds/phrases/i_love_programming.wav"),
    Ensemble(
        entext: "i love anime",
        image: "assets/images/colors/yellow.png",
        jptext: "watashi wa anime ga daisuki desu",
        sound: "sounds/phrases/i_love_anime.wav"),
    Ensemble(
        entext: "how are u feeling",
        image: "assets/images/colors/color_dusty_yellow.png",
        jptext: "choushi wadou desu ka",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 189, 74),
        title: Text("EXPRESSIONS"),
      ),
      body: ListView.builder(
        itemCount: ensembles.length,
        itemBuilder: (context, index) {
          return PhrasesElements(
            color: Colors.green,
            en1: ensembles[index],
          );
        },
      ),
    );
  }
}
