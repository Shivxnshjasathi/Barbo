import 'package:flutter/material.dart';

Widget consttextfield(Widget control) {
  return Container(
    height: 60,
    width: 480,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey)),
    child: control,
  );
}
