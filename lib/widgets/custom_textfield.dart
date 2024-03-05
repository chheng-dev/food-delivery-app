import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String text;
  final String hintText;
  final bool obscureText;
  final Icon? suffixIcon;

  const TextFieldWidget(
      {super.key,
      required this.text,
      required this.hintText,
      required this.obscureText,
      this.suffixIcon});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text),
        SizedBox(height: 10),
        TextField(
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            hintText: widget.hintText,
            suffixIcon: widget.suffixIcon,
            suffixIconColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
