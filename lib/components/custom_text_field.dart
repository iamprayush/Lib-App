import 'package:flutter/material.dart';
import 'package:libapp/constants.dart';

class CustomTextFeild extends StatefulWidget {
  final String hintText;
  final Function onChanged;
  final bool isPass;
  final TextInputType kbType;

  CustomTextFeild({
    @required this.hintText,
    @required this.onChanged,
    this.isPass = false,
    this.kbType = TextInputType.text,
  });

  @override
  _CustomTextFeildState createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      cursorColor: kPrimaryColor,
      cursorWidth: 3.0,
      style: kNormalTextStyle,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: kNormalTextStyle.copyWith(
          color: kTextColor.withOpacity(0.5),
        ),
        fillColor: Color(0xFFE6E6E6),
        filled: true,
        suffix: widget.isPass
            ? Container(
                width: 45.0,
                height: 15.0,
                child: FlatButton(
                  child: Icon(
                    this.passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: kTextColor.withAlpha(150),
                  ),
                  onPressed: () {
                    setState(() {
                      this.passwordVisible = !this.passwordVisible;
                    });
                  },
                  splashColor: Colors.transparent,
                ),
              )
            : null,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
      keyboardType: widget.kbType,
      obscureText: widget.isPass && !this.passwordVisible,
    );
  }
}
