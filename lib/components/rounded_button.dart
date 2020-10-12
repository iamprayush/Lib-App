import 'package:flutter/material.dart';
import 'package:libapp/constants.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String content;
  final Function onPressed;
  final bool outlined;

  RoundedButton({
    @required this.color,
    @required this.content,
    @required this.onPressed,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: outlined ? kTextColor : Colors.transparent,
                  width: 1.5,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(7.0),
              ),
              color: outlined ? kBackgroundColor : color,
              onPressed: onPressed,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  content,
                  style: TextStyle(
                    color: outlined ? kTextColor : kBackgroundColor,
                    fontSize: 17.0,
                    fontFamily: 'Gilroy-Medium',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
