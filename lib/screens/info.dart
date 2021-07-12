import 'package:covid_19_app/components/header.dart';
import 'package:covid_19_app/components/my_mini_container.dart';
import 'package:covid_19_app/components/preventation_container.dart';
import 'package:covid_19_app/components/shadow_container.dart';
import 'package:covid_19_app/constants.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(
              text: 'Get to know \nAbout Covid-19',
              image: 'assets/icons/coronadr.svg',
              callback: () => print(
                'menu button of info scrren clicked1',
              ),
              infoPage: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Symptomps',
                style: kTitleTextstyle.copyWith(height: 2.5),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyMiniContainer(
                      text: 'Headache', image: 'assets/images/headache.png'),
                  MyMiniContainer(
                      text: 'Cought', image: 'assets/images/caugh.png'),
                  MyMiniContainer(
                      text: 'Fever', image: 'assets/images/fever.png'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Preventation',
                style: kTitleTextstyle.copyWith(height: 2.5),
                textAlign: TextAlign.left,
              ),
            ),
            ShadowContainer(
              child: PreventationContainer(
                image: 'assets/images/wear_mask.png',
                title: 'Wear face mask',
                description:
                    'Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks.',
              ),
            ),
            SizedBox(height: 10.0),
            ShadowContainer(
              child: PreventationContainer(
                image: 'assets/images/wash_hands.png',
                title: 'Wash your hands',
                description:
                    'Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks.',
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
