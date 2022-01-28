/// ErlangParasu 2022

library space_fixer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpaceFixerHorizontalLine extends StatelessWidget {
  SpaceFixerHorizontalLine({
    Key? key,
    required this.context,
    required this.overflowColor,
    this.width,
    required this.overflowHeight,
  }) : super(key: key) {
    width ??= MediaQuery.of(context).size.width;
  }

  BuildContext context;
  Color overflowColor;
  double? width;
  double overflowHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 0,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            width: width,
            height: overflowHeight,
            child: Container(
              width: width,
              height: overflowHeight,
              color: overflowColor,
            ),
          ),
        ],
      ),
    );
  }
}

class SpaceFixerVerticalLine extends StatelessWidget {
  SpaceFixerVerticalLine({
    Key? key,
    required this.context,
    required this.overflowColor,
    this.overflowWidth = 2,
    this.height,
  }) : super(key: key) {
    height ??= MediaQuery.of(context).size.height;
  }

  BuildContext context;
  Color overflowColor;
  double overflowWidth;
  double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0,
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            width: overflowWidth,
            height: height,
            child: Container(
              width: overflowWidth,
              height: height,
              color: overflowColor,
            ),
          ),
        ],
      ),
    );
  }
}
