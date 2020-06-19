import "package:flutter/material.dart";
import '../constants.dart';
class BottomButton extends StatelessWidget {
  final String title;
  final Function route;
  BottomButton({@required this.title, this.route});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: Color(0xFFEB1555),
        height: 80,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: kNavigator,
          ),
        ),
      ),
    );
  }
}