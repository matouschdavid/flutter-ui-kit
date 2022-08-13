import 'package:flutter/material.dart';

enum MatTextSize { label, paragraph, h6, h5, h4, h3, h2, h1 }

class MatText extends StatelessWidget {
  final String text;
  final MatTextSize fontSize;
  final Color? color;
  final FontWeight weight;
  final double fontHeight;
  final TextDecoration? decoration;

  const MatText.p(this.text,
      {Key? key,
      this.color,
      this.fontSize = MatTextSize.paragraph,
      this.weight = FontWeight.normal,
      this.fontHeight = 1.3,
      this.decoration})
      : super(key: key);

  const MatText.label(
    this.text, {
    Key? key,
    this.color,
    this.fontSize = MatTextSize.label,
    this.weight = FontWeight.normal,
    this.fontHeight = 1.3,
    this.decoration,
  }) : super(key: key);

  const MatText.h1(
    this.text, {
    Key? key,
    this.color,
    this.fontSize = MatTextSize.h1,
    this.weight = FontWeight.bold,
    this.fontHeight = 1.3,
    this.decoration,
  }) : super(key: key);

  const MatText.h2(
    this.text, {
    Key? key,
    this.color,
    this.fontSize = MatTextSize.h2,
    this.weight = FontWeight.bold,
    this.fontHeight = 1.3,
    this.decoration,
  }) : super(key: key);

  const MatText.h3(
    this.text, {
    Key? key,
    this.color,
    this.fontSize = MatTextSize.h3,
    this.weight = FontWeight.bold,
    this.fontHeight = 1.3,
    this.decoration,
  }) : super(key: key);

  const MatText.h4(
    this.text, {
    Key? key,
    this.color,
    this.fontSize = MatTextSize.h4,
    this.weight = FontWeight.bold,
    this.fontHeight = 1.3,
    this.decoration,
  }) : super(key: key);

  const MatText.h5(
    this.text, {
    Key? key,
    this.color,
    this.fontSize = MatTextSize.h5,
    this.weight = FontWeight.bold,
    this.fontHeight = 1.3,
    this.decoration,
  }) : super(key: key);

  const MatText.h6(
    this.text, {
    Key? key,
    this.color,
    this.fontSize = MatTextSize.h6,
    this.weight = FontWeight.bold,
    this.fontHeight = 1.3,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Text(text, style: _style()),
    );
  }

  TextStyle _style() {
    return TextStyle(
        fontWeight: weight,
        fontSize: _fontSize(),
        height: fontHeight,
        decoration: decoration,
        color: color);
  }

  double _fontSize() {
    switch (fontSize) {
      case MatTextSize.label:
      case MatTextSize.paragraph:
        return 16;
      case MatTextSize.h6:
        return 10.72;
      case MatTextSize.h5:
        return 13.28;
      case MatTextSize.h4:
        return 16;
      case MatTextSize.h3:
        return 18.72;
      case MatTextSize.h2:
        return 24;
      case MatTextSize.h1:
        return 32;
    }
  }
}
