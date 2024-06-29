import 'package:djaponais/item/category.dart';
import 'package:djaponais/screens/colors_page.dart';
import 'package:djaponais/screens/family_members.dart';
import 'package:djaponais/screens/numbers.dart';
import 'package:djaponais/screens/phrases_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      category(
        color: Color.fromARGB(80, 5, 188, 255),
        categoryName: "Family Members",
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (familyMembers()),
            ),
          );
        },
      ),
      category(
        color: Color.fromARGB(250, 226, 104, 4),
        categoryName: "Numbers",
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (Numbers()),
            ),
          );
        },
      ),
      category(
        color: Color.fromARGB(255, 119, 186, 11),
        categoryName: "Colors",
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (ColorsPage()),
            ),
          );
        },
      ),
      category(
        color: Color.fromARGB(255, 158, 189, 74),
        categoryName: "Expressions",
        ontap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (Phrasespage()),
            ),
          );
        },
      ),
    ]);
  }
}
