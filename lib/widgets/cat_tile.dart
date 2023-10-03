import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../conts/text.dart';

Widget cat_tile(String img, String type) {
  return Container(
    height: 80,
    width: 170,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.black12),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          fontstyle(type, 16, Colors.black),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
