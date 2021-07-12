import 'package:covid_19_app/constants.dart';
import 'package:flutter/material.dart';

class MyMiniContainer extends StatelessWidget {
  final String image;
  final String text;

  const MyMiniContainer({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
              blurRadius: 30,
              spreadRadius: 10,
              offset: Offset(0, 4),
              color: kShadowColor),
        ],
        color: kBackgroundColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            Image.asset(image),
            Text(
              text,
              style: TextStyle(
                  color: kTitleTextColor.withOpacity(0.7),
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
