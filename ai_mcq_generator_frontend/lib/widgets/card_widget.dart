import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final Widget columnWidget;
  final String imageString;
  final Color backgroundColor;
  final double? height;
  CardWidget(this.columnWidget, this.backgroundColor, this.imageString, this.height);
  //const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState(columnWidget, backgroundColor, imageString, height);
}

class _CardWidgetState extends State<CardWidget> {
  final Widget columnWidget;
  final Color backgroundColor;
  final String imageString;
  final double? height;
  _CardWidgetState(this.columnWidget, this.backgroundColor, this.imageString, this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0)
    ),
    child: Card(
      clipBehavior: Clip.antiAlias,
      color: backgroundColor,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.network(imageString).image,
              fit: BoxFit.cover,
            ),
          ),
          child: columnWidget,
        ),
        
      ),
    ),
    );
  }
}