import 'package:covid_19_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventationContainer extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const PreventationContainer(
      {required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.fitHeight,
          height: MediaQuery.of(context).size.height / 5,
        ),
        Positioned(
          left: 145.0,
          right: 4.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.0),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kTitleTextColor),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),
              Text(
                description,
                style: TextStyle(
                  color: kTitleTextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0, top: 25.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset('assets/icons/forward.svg'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
