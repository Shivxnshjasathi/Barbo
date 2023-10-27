import 'package:flutter/material.dart';

Widget consttextfield2(Widget control) {
  return Container(
    height: 40,
    width: 60,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey)),
    child: control,
  );
}
