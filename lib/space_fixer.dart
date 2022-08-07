/// ErlangParasu 2022

library space_fixer;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpaceFixerHorizontalLine extends StatelessWidget {
  const SpaceFixerHorizontalLine({
    super.key,
    @Deprecated('Context is no longer required.') this.context,
    required this.overflowColor,
    this.width,
    required this.overflowHeight,
    this.border,
  });

  final BuildContext? context;
  final Color overflowColor;
  final double? width;
  final double overflowHeight;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext buildContext, BoxConstraints boxConstraints) {
        final double width;
        width = this.width ??
            boxConstraints.maxWidth; //MediaQuery.of(context).size.width - 1;
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
                  decoration: BoxDecoration(
                    color: overflowColor,
                    border: border,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SpaceFixerVerticalLine extends StatelessWidget {
  const SpaceFixerVerticalLine({
    super.key,
    @Deprecated('Context is no longer required.') this.context,
    required this.overflowColor,
    this.overflowWidth = 2,
    this.height,
    this.border,
  });

  final BuildContext? context;
  final Color overflowColor;
  final double overflowWidth;
  final double? height;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext buildContext, BoxConstraints boxConstraints) {
        final double height;
        height = this.height ??
            boxConstraints.maxHeight; //MediaQuery.of(context).size.height;
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
                  decoration: BoxDecoration(
                    color: overflowColor,
                    border: border,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
