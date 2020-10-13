import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:libapp/components/custom_text_field.dart';
import 'package:libapp/components/highlighted_text.dart';
import 'package:libapp/components/rounded_button.dart';
import 'package:libapp/constants.dart';

class LoginScreen extends StatelessWidget {
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
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  'assets/images/login_image.svg',
                  width: screenSize.width * 0.55,
                ),
              ),
              SizedBox(height: 30.0),
              Align(
                alignment: Alignment.centerLeft,
                child: HighlightedTitle(
                  content: 'Login',
                ),
              ),
              SizedBox(height: 40.0),
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
              SizedBox(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
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
                          child: ForgotPasswordModal(),
                        );
                      },
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Text(
                    'Forgot Password?',
                    style: kBoldTextStyle.copyWith(
                      fontFamily: 'Gilroy-Medium',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35.0),
              RoundedButton(
                content: 'Login',
                color: kTextColor,
                onPressed: () {},
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'New here?',
                    style: kNormalTextStyle,
                  ),
                  SizedBox(width: 7.0),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/joinus');
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text(
                      'Create account.',
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

class ForgotPasswordModal extends StatefulWidget {
  @override
  _ForgotPasswordModalState createState() => _ForgotPasswordModalState();
}

class _ForgotPasswordModalState extends State<ForgotPasswordModal> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: kBackgroundColor,
      height: screenSize.height * 0.5,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.1,
          vertical: screenSize.height * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child:
                    HighlightedTitle(content: 'Forgot Password?', size: 32.0)),
            Text(
              'Enter the email you used while joining and we\'ll send you a link to reset your password.',
              style: kSmallTextStyle,
            ),
            CustomTextFeild(
              hintText: 'Email',
              onChanged: (value) {},
              kbType: TextInputType.emailAddress,
            ),
            RoundedButton(
              content: 'RESET PASSWORD',
              color: kTextColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
