import 'package:audioplayers/audioplayers.dart';
import 'package:djaponais/item/ensemble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PhrasesElements extends StatelessWidget {
  PhrasesElements({
    super.key,
    required this.en1,
    required this.color,
  });
  Ensemble en1;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      en1.entext,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      en1.jptext,
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(en1.sound));
                  },
                  icon: Icon(Icons.play_arrow),
                  color: Colors.black,
                ))
          ],
        ));
  }
}
