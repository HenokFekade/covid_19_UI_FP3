import 'package:covid_19_app/components/shadow_container.dart';
import 'package:covid_19_app/components/stutus_widget.dart';
import 'package:covid_19_app/components/header.dart';
import 'package:covid_19_app/constants.dart';
import 'package:covid_19_app/screens/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _dropDownValue = kDropDownList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
                image: 'assets/icons/Drcorona.svg',
                text: 'All you need \nis stay at home.',
                callback: () => Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => InfoScreen()))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 13.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color(0xFFC9C9C9),
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/maps-and-flags.svg'),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                        value: _dropDownValue,
                        onChanged: (value) {
                          setState(() {
                            _dropDownValue = value!;
                          });
                        },
                        isExpanded: true,
                        items: kDropDownList
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Case Updated\n',
                        style: kTitleTextstyle.copyWith(height: 2.5)),
                    TextSpan(
                        text: 'Newest Update March 28',
                        style: TextStyle(color: kTextLightColor, height: 1.2)),
                  ])),
                  Text(
                    'See details',
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            ShadowContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatusWidget(
                    color: kInfectedColor,
                    count: 1246,
                    status: 'Infected',
                  ),
                  StatusWidget(
                    color: kDeathColor,
                    count: 87,
                    status: 'Death',
                  ),
                  StatusWidget(
                    color: kRecovercolor,
                    count: 46,
                    status: 'Recovered',
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Spread of Virus',
                        style: kTitleTextstyle.copyWith(height: 2.5)),
                  ])),
                  Text(
                    'See details',
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            ShadowContainer(child: Image.asset('assets/images/map.png')),
          ],
        ),
      ),
    );
  }
}
