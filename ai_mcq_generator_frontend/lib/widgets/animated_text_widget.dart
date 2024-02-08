import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants/main_string_constants.dart';

class AnimationHomeTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  AnimationHomeTextWidget(this.text, this.fontSize);
  //const AnimationHomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      totalRepeatCount: 1,
      animatedTexts: [
        TyperAnimatedText(
          text,
          textStyle: TextStyle(
            fontFamily: calligraffitti,
            color: Colors.white,
            fontSize: fontSize,
          ),
        )
      ],
    );
  }
}