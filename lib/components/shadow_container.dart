import 'package:covid_19_app/constants.dart';
import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final Widget child;

  const ShadowContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Container(
        width: double.infinity,
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
        child: child,
      ),
    );
  }
}
