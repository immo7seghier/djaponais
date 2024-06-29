import 'package:djaponais/item/elements.dart';
import 'package:djaponais/item/ensemble.dart';
import 'package:flutter/material.dart';

class familyMembers extends StatelessWidget {
  familyMembers({super.key});
  List<Ensemble> ensembles = [
    Ensemble(
        entext: "father",
        image: "assets/images/family_members/family_father.png",
        jptext: "chichi",
        sound: "sounds/family_members/father.wav"),
    Ensemble(
        entext: "mother",
        image: "assets/images/family_members/family_mother.png",
        jptext: "haha",
        sound: "sounds/family_members/mother.wav"),
    Ensemble(
        entext: "son",
        image: "assets/images/family_members/family_son.png",
        jptext: "musuko",
        sound: "sounds/family_members/son.wav"),
    Ensemble(
        entext: "younger brother",
        image: "assets/images/family_members/family_younger_brother.png",
        jptext: "otouto",
        sound: "sounds/family_members/younger brohter.wav"),
    Ensemble(
        entext: "younger sister",
        image: "assets/images/family_members/family_younger_sister.png",
        jptext: "imoto",
        sound: 'sounds/family_members/younger sister.wav'),
    Ensemble(
        entext: "daughter",
        image: "assets/images/family_members/family_daughter.png",
        jptext: "musume",
        sound: 'sounds/family_members/daughter.wav'),
    Ensemble(
        entext: "older sister",
        image: "assets/images/family_members/family_older_sister.png",
        jptext: "ane",
        sound: 'sounds/family_members/older sister.wav'),
    Ensemble(
        entext: "older brother",
        image: "assets/images/family_members/family_older_brother.png",
        jptext: "ani",
        sound: 'sounds/family_members/older bother.wav'),
    Ensemble(
        entext: "grand father",
        image: "assets/images/family_members/family_grandfather.png",
        jptext: "sofu",
        sound: 'sounds/family_members/grand father.wav'),
    Ensemble(
        entext: "grand mother",
        image: "assets/images/family_members/family_grandmother.png",
        jptext: "o baachan",
        sound: 'sounds/family_members/grand mother.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("familyMembers"),
        backgroundColor: Color.fromARGB(80, 5, 188, 255),
      ),
      body: ListView.builder(
        itemCount: ensembles.length,
        itemBuilder: (context, index) {
          return Elements(
            ensemble: ensembles[index],
            color: Colors.deepPurpleAccent,
            color2: Colors.blueGrey,
          );
        },
      ),
    );
  }
}
