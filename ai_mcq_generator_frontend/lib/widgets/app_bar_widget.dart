import 'package:flutter/material.dart';
import 'text_widget.dart';
import '../constants/main_string_constants.dart';

class AppBarWidget extends StatelessWidget {
  final String textArg;
  AppBarWidget(this.textArg);
  //const AppBarWidget({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: BodyTextWidget(textArg, calligraffitti, 15.0, Colors.white),
      backgroundColor: Color.fromARGB(255, 111, 91, 240),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          print("home");
        },
        icon: Icon(Icons.home),
        tooltip: "Home",
      ),


      actions: [
        IconButton(
          onPressed: () {
            print("Hello");
          }, 
          icon: Icon(Icons.login),
          tooltip: "Login",
        ),

        SizedBox(width: 16.0),

        IconButton(
          onPressed: () {
            print("Hello");
          }, 
          icon: Icon(Icons.app_registration),
          tooltip: "Sign up",
        ),
      ],
    );
  }
}