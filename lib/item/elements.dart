import 'package:djaponais/item/ensemble.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

class Elements extends StatelessWidget {
  Elements(
      {super.key,
      required this.ensemble,
      required this.color,
      required this.color2});
  Ensemble ensemble;
  Color color;
  Color color2;
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: color,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: color2,
              child: Image.asset(
                ensemble.image,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ensemble.entext,
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    ensemble.jptext,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(ensemble.sound));
                  },
                  icon: Icon(Icons.play_arrow),
                  color: Colors.black,
                ))
          ],
        ));
  }
}

class ElementInfo extends StatelessWidget {
  ElementInfo({super.key, required this.ensemble});
  Ensemble ensemble;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 120),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ensemble.entext,
              ),
              Text(
                ensemble.jptext,
              ),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(ensemble.sound));
              },
              icon: Icon(Icons.play_arrow),
              color: Colors.black,
            ))
      ],
    );
  }
}
