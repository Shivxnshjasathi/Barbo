import 'package:flutter/material.dart';

import '../conts/text.dart';

Widget constbutton(String title, Color col, Color buttoncol) {
  return Container(
    height: 60,
    width: 480,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(15), color: col),
    child: Center(
      child: fontstyle(title, 21, buttoncol),
    ),
  );
}
