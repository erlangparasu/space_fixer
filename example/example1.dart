/// ErlangParasu 2022

library space_fixer;

import 'package:flutter/material.dart';
import 'package:space_fixer/space_fixer.dart';

Widget widgetExample1(BuildContext context) {
  return Container(
    color: Colors.blue,
    child: ListView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      children: [
        Container(),
        SpaceFixerHorizontalLine(
          context: context,
          overflowHeight: 3,
          overflowColor: Colors.black,
        ),
        Container(),
        SpaceFixerHorizontalLine(
          context: context,
          overflowHeight: 3,
          overflowColor: Colors.black,
        ),
        Container(),
        SpaceFixerHorizontalLine(
          context: context,
          overflowHeight: 3,
          overflowColor: Colors.black,
        ),
        Container(),
        SpaceFixerHorizontalLine(
          context: context,
          overflowHeight: 3,
          overflowColor: Colors.black,
        ),
        Container(),
        SpaceFixerHorizontalLine(
          context: context,
          overflowHeight: 3,
          overflowColor: Colors.black,
        ),
        Container(),
      ],
    ),
  );
}
