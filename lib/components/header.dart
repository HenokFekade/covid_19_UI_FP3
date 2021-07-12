import 'package:covid_19_app/components/my_custom_clip.dart';
import 'package:covid_19_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback callback;
  final bool infoPage;

  const Header({
    required this.text,
    required this.image,
    required this.callback,
    this.infoPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClip(),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 2.5,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('assets/images/virus.png')),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11349F),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: callback,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ),
                infoPage ? SizedBox(height: 5.0) : SizedBox(),
                Expanded(
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: infoPage ? 0.0 : 20.0),
                        child: SvgPicture.asset(
                          image,
                          width: 230,
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fitWidth,
                          height: infoPage
                              ? MediaQuery.of(context).size.height / 1.5
                              : MediaQuery.of(context).size.height / 1.8,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 140.0, top: 40.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            text,
                            style: kTitleTextstyle.copyWith(
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
