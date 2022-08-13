import 'package:flutter/material.dart';
import 'package:mat_ui/mat_text.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  late final Color bgColor;
  late final Color borderColor;
  late final Color fgColor;
  late final double borderWidth;
  late final bool hasBoxShadow;

  Button.primary({Key? key, this.onTap, required this.text}) : super(key: key) {
    bgColor = Colors.purple;
    fgColor = Colors.white;
    borderColor = Colors.transparent;
    borderWidth = 0;
    hasBoxShadow = true;
  }

  Button.secondary({Key? key, this.onTap, required this.text})
      : super(key: key) {
    bgColor = Colors.transparent;
    fgColor = Colors.purple;
    borderColor = Colors.purple;
    borderWidth = 3;
    hasBoxShadow = false;
  }

  Button.tertiary({Key? key, this.onTap, required this.text})
      : super(key: key) {
    bgColor = Colors.transparent;
    fgColor = Colors.purple;
    borderColor = Colors.transparent;
    borderWidth = 0;
    hasBoxShadow = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: borderColor, width: borderWidth),
              boxShadow: [
                if (hasBoxShadow)
                  const BoxShadow(
                    blurRadius: 10,
                    color: Color.fromARGB(25, 0, 0, 0),
                    offset: Offset(0, 4),
                  )
              ]),
          child: Center(child: MatText.h3(text, color: fgColor)),
        ),
      ),
    );
  }
}
