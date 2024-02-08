import 'package:ai_mcq_generator/constants/main_string_constants.dart';
import 'package:ai_mcq_generator/widgets/animated_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'text_widget.dart';
import 'card_widget.dart';
import '../controllers/request_controller.dart';


class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final TextEditingController textController = TextEditingController();
  String textControllerForChatGpt = "";

  @override

  void initState() {
    super.initState();
    textController.addListener(() {
      
    });
  }

  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void _setChatGptResponse(String res) {
    setState(() {
      textControllerForChatGpt = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 25, 76, 137),
    ),
    child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            
            Center(
              child: BodyTextWidget(
                "AI QUESTION GPT",
                calligraffitti,
                50.0,
                Colors.white,
              ),
            ),

            SizedBox(height: 20),
            
            CardWidget(
              const HomePageCardWidget(), 
              Colors.white, 
              homeCardViewString, 
              400,
            ),

            SizedBox(height: 50),

            CardWidget(
              HomeInfoCardWidget(
                BodyTextWidget(
                  "Now Create MCQ's with great ease. \n Now with a more powerful and a submersive ai, \n this machine is capable of \n doing everything it can.",
                  calligraffitti,
                  32.0,
                  Colors.white
                ),

                BodyTextWidget(
                  "Now Create MCQ's with great ease. Now with a more powerful and a submersive ai, \n this machine is capable of doing everything it can.",
                  calligraffitti,
                  16.0,
                  Colors.white
                ),

                Alignment.topLeft,
              ),
              Colors.white, 
              homeInfoCardViewString, 
              null,
            ),

            SizedBox(height: 50),

            CardWidget(
              HomeInfoCardWidget(
                BodyTextWidget(
                  "A powerful ai capable of doing almost everything \n from question paper generation to \n making your day and life easier", 
                  calligraffitti, 
                  32.0, 
                  Colors.white
                ),

                BodyTextWidget(
                  "A powerful ai capable of doing almost everything from question paper generation to \n making your day and life easier", 
                  calligraffitti, 
                  16.0, 
                  Colors.white
                ),

                Alignment.topRight,
              ),
              Colors.white, 
              homeInfoCardViewString, 
              null,
            ),
            
            SizedBox(height: 50),

            CardWidget(
              HomeInfoCardWidget(
                BodyTextWidget(
                  "A robust service at your fingertips.\n generate tests for schools, \n exams, or for any other practical utility",
                  calligraffitti, 
                  32.0, 
                  Colors.white
                ),  

                BodyTextWidget(
                  "A robust service at your fingertips. generate tests for schools, \n exams, or for any other practical utility",
                  calligraffitti, 
                  16.0, 
                  Colors.white
                ),

                Alignment.topLeft,
              ),
              Colors.white, 
              homeInfoCardViewString, 
              null,
            ),

            SizedBox(height: 50),

            CardWidget(
              HomeInfoCardWidget(
                BodyTextWidget(
                  "Now with more features. \n Fill in the blanks generation\nAnswer the following generation,\nTrue and false generation.",
                  calligraffitti,
                  32.0,
                  Colors.white,
                ),

                BodyTextWidget(
                  "Now with more features. Fill in the blanks generation, Answer the following generation,\nTrue and false generation.",
                  calligraffitti,
                  16.0,
                  Colors.white,
                ),

                Alignment.topRight,
              ), 
              Colors.white, 
              homeInfoCardViewString, 
              null,
            ),

            SizedBox(height: 20),

            Center(
              child: TextFormField(
                  decoration: InputDecoration(
                  hintText: "Enter the question.",
                  labelText: "Enter Question",
                  suffixIcon: IconButton(
                      onPressed:() async {
                          _setChatGptResponse("Generating questions. This can take some time..");
                          String responseBody = await sendQuestionData(textController.text, postRequestUrl);
                          _setChatGptResponse(responseBody);
                      },
                      icon: Icon(Icons.send),
                  ),

                  prefixIcon: Icon(Icons.question_answer),
                  ),

                  controller: textController,
                  maxLines: null,
                  enableSuggestions: true,
                  autocorrect: true,
                  obscureText: false,
                ),
            ),

            SizedBox(height: 20),

            Center(
              child: SelectableText(
                textControllerForChatGpt,
                style: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 30),

            Center(
              child:BodyTextWidget(
                "Copyright c. 2023 Sanidhya Mishra all rights reserved.", 
                lato, 
                16.0, 
                Colors.white,
              )
            ),

            SizedBox(height: 20),

          ],
        ),
      ),

    ),
    );
  }
}

class HomePageCardWidget extends StatefulWidget {
  const HomePageCardWidget({super.key});

  @override
  State<HomePageCardWidget> createState() => _HomePageCardWidgetState();
}

class _HomePageCardWidgetState extends State<HomePageCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
              child: AnimationHomeTextWidget(
                "AI Question Generation - \n One stop solution \n for generating questions.",
                50.0
              ),
              alignment: Alignment.topLeft,
            ),
        ),

        SizedBox(width:10),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
              child: AnimationHomeTextWidget(
                "AI Question GPT allows you to create MCQ's questions of various difficulty \n levels in order to ease the burden upon you to make tests and analyze them.\nStart trying today for free and pay as you go up.",
                16.0
              ),
              alignment: Alignment.topLeft,
            ),
        ),
      
        SizedBox(height: 10),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
              ElevatedButton(
              onPressed: () {
                print("Hello world");
              }, 

              child: BodyTextWidget(
                "Login",
                lato,
                14.0,
                Colors.white,
              ),
            ),

            SizedBox(width: 80),

            ElevatedButton(
                onPressed: () {
                  print("Hello world");
                }, 

                child: BodyTextWidget(
                  "SignUp",
                  lato,
                  14.0,
                  Colors.white,
                ),
              ),
          ],
        ),
        ),
      ]
    );
  }
}


class HomeInfoCardWidget extends StatelessWidget {
  final Widget infoText;
  final Widget smallInfoText;
  final AlignmentGeometry alignment; 
  HomeInfoCardWidget(this.infoText, this.smallInfoText, this.alignment);
  //const HomeInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),

          Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Align(
                alignment: alignment,
                child: infoText,
              ),
          ),

          SizedBox(height: 10),

          Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Align(
                alignment: alignment,
                child: smallInfoText,
              ),
          ),
          SizedBox(height:20),
      ],
    );
  }
}