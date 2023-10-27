import 'package:flutter/material.dart';

import '../../conts/text.dart';

Widget salontile(String img, String salonname, String rating, String address) {
  return Container(
      width: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                fontstyle(salonname, 18, Colors.black),
                fontstyle(rating, 16, Colors.black),
                fontstyle(address, 16, Colors.grey),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: fontstyle("Hair", 16, Colors.black),
                  ),
                )
              ],
            ),
          )
        ],
      ));
}

Categories(String catname, String img) {
  return Container();
}
