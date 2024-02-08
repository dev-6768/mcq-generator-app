import 'package:flutter/material.dart';

class BodyTextWidget extends StatefulWidget {
  final String textArg;
  final String fontFamily;
  final double fontSize;
  final Color fontColor;

  BodyTextWidget(this.textArg, this.fontFamily, this.fontSize, this.fontColor);
  //const BodyTextWidget({super.key});

  @override
  State<BodyTextWidget> createState() => _BodyTextWidgetState(textArg, fontFamily, fontSize, fontColor);
}

class _BodyTextWidgetState extends State<BodyTextWidget> {
  final String textArg;
  final String fontFamily;
  final double fontSize;
  final Color fontColor;

  _BodyTextWidgetState(this.textArg, this.fontFamily, this.fontSize, this.fontColor);

  @override
  Widget build(BuildContext context) {
    return Text(
      textArg,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: fontColor
      ),
    );

  }
}