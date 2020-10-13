import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:libapp/components/highlighted_text.dart';
import 'package:libapp/components/rounded_button.dart';
import 'package:libapp/constants.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/images/landing_image.svg',
                width: screenSize.width * 0.8,
              ),
              SizedBox(height: 30.0),
              HighlightedTitle(content: 'The Library'),
              SizedBox(height: 60.0),
              RoundedButton(
                content: 'Login',
                color: kTextColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                outlined: true,
              ),
              SizedBox(height: 15.0),
              RoundedButton(
                content: 'Join Us',
                color: kTextColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/joinus');
                },
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trying out?  ',
                    style: kNormalTextStyle,
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text(
                      'Browse as guest.',
                      style: kBoldTextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
