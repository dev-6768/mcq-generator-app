import 'package:flutter/material.dart';
import '../controllers/request_controller.dart';
import '../constants/main_string_constants.dart';

class RichTextWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController textController;
  RichTextWidget(this.hintText, this.labelText, this.textController);
  //const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: IconButton(
          onPressed:() async {
            String responseBody = await sendQuestionData(textController.text, postRequestUrl);
            referenceForData = responseBody;
            //textController.text = responseBody.toString();
          },
          icon: Icon(Icons.send),
        ),

        prefixIcon: Icon(Icons.question_answer),
      ),

      maxLines: null,
      enableSuggestions: true,
      autocorrect: true,
      obscureText: false,
    );
  }
}