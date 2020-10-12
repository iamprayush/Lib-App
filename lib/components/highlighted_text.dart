import 'package:flutter/material.dart';
import 'package:libapp/constants.dart';

class HighlightedTitle extends StatelessWidget {
  final String content;
  HighlightedTitle({this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 2,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding * 1.5),
              height: 12.0,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding * 0.5),
            child: Text(
              content,
              style: kHeadingStyle,
            ),
          ),
        ],
      ),
    );
  }
}
