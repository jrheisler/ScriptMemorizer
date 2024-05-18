import 'package:flutter/material.dart';

const kBackgroundColor = Colors.black87;
const kShadowColor = Colors.white54;
const kPrimaryColor = Colors.deepPurple;



BoxDecoration newBoxDec({
  Color boxColor = Colors.transparent,
  Color shadowColor = Colors.black,
  Color borderColor = Colors.blue,
}) {

  if (boxColor == Colors.transparent) {
    boxColor = kBackgroundColor;
    shadowColor = kShadowColor;
    borderColor = kPrimaryColor;
  }

  return BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    color: boxColor,
    border:  Border(
      top: BorderSide(color: borderColor, width: 1.0),
      left: BorderSide(color: borderColor, width: 1.0),
      bottom: BorderSide(color: borderColor, width: 1.0),
      right: BorderSide(color: borderColor, width: 1.0),
    ),
    //borderRadius: BorderRadius.circular(20.0),
    boxShadow: [
      BoxShadow(
        color: shadowColor,
        offset: const Offset(0, 2),
        blurRadius: 2.0,
      ),
    ],
  );
}