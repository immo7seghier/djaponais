import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class category extends StatelessWidget {
  category(
      {required this.color, required this.categoryName, required this.ontap});
  Color color;
  VoidCallback ontap;
  String categoryName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          height: 80,
          color: color,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              categoryName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
