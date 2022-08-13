import 'package:flutter/material.dart';
import 'package:mat_ui/mat_text.dart';

class InputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String? hintText;

  const InputField(
      {Key? key, required this.label, required this.controller, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MatText.label(label),
          TextField(
            controller: controller,
            maxLines: 1,
            decoration: InputDecoration(hintText: hintText),
          ),
        ],
      ),
    );
  }
}
