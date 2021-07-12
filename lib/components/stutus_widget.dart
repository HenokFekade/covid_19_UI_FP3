import 'package:covid_19_app/constants.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final Color color;
  final String status;
  final int count;

  const StatusWidget(
      {required this.color, required this.status, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        children: [
          ClipOval(
            child: Container(
              padding: EdgeInsets.all(5.0),
              height: 25.0,
              width: 25.0,
              color: color.withOpacity(0.3),
              child: ClipOval(
                child: Container(
                    padding: EdgeInsets.all(3.0),
                    color: color.withOpacity(1),
                    child: ClipOval(
                      child: Container(
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            count.toString(),
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w500,
              fontSize: 28,
              letterSpacing: 2,
            ),
          ),
          Text(
            status,
            style: TextStyle(color: kTextLightColor),
          )
        ],
      ),
    );
  }
}
