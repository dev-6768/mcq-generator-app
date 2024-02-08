import 'package:ai_mcq_generator/constants/main_string_constants.dart';
import 'package:ai_mcq_generator/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        "AI QUESTION GPT",
      ).build(context),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(mainBackgroundImage).image,
            fit: BoxFit.cover,
          ),
        ),
        child: const HomePageBody(),
      ),
      
      
    );
  }
}