import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:libapp/components/custom_text_field.dart';
import 'package:libapp/components/highlighted_text.dart';
import 'package:libapp/components/rounded_button.dart';
import 'package:libapp/constants.dart';

class JoinUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.1,
            vertical: screenSize.height * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  HighlightedTitle(
                    content: 'Join Us',
                  ),
                  SvgPicture.asset(
                    'assets/images/joinus_image.svg',
                    width: screenSize.width * 0.3,
                  ),
                ],
              ),
              SizedBox(height: 45.0),
              CustomTextFeild(
                hintText: 'Name',
                onChanged: (newValue) {},
              ),
              SizedBox(height: 20.0),
              CustomTextFeild(
                hintText: 'Email',
                onChanged: (newValue) {},
                kbType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.0),
              CustomTextFeild(
                hintText: 'Password',
                onChanged: (newValue) {},
                isPass: true,
              ),
              SizedBox(height: 20.0),
              CustomTextFeild(
                hintText: 'Confirm Password',
                onChanged: (newValue) {},
                isPass: true,
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.0),
                        topRight: Radius.circular(7.0),
                      ),
                    ),
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return AnimatedPadding(
                        padding: MediaQuery.of(context).viewInsets,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.decelerate,
                        child: Container(
                          height: 500.0,
                        ),
                      );
                    },
                  );
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Text(
                  'Pick a plan.',
                  style: kBoldTextStyle,
                ),
              ),
              SizedBox(height: 35.0),
              RoundedButton(
                content: 'Join',
                color: kTextColor,
                onPressed: () {},
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Already a member?',
                    style: kNormalTextStyle,
                  ),
                  SizedBox(width: 7.0),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text(
                      'Login.',
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
