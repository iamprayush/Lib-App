import 'package:flutter/material.dart';
import 'package:libapp/constants.dart';

class HighlightedTitle extends StatelessWidget {
  final String content;
  final double size;
  HighlightedTitle({@required this.content, this.size = 46.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size + 5,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 2,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding * 1.5),
              height: size / 4,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding * 0.5),
            child: Text(
              content,
              style: kHeadingStyle.copyWith(fontSize: size),
            ),
          ),
        ],
      ),
    );
  }
}
