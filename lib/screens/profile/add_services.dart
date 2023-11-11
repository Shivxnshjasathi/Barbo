import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/profile/add_amount.dart';
import 'package:barbo/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

class add_scalon extends StatefulWidget {
  const add_scalon({super.key});

  @override
  State<add_scalon> createState() => _add_scalonState();
}

int selected = 1;

class _add_scalonState extends State<add_scalon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    fontstyle("Services", 26, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    fontstyle("Add services that you offer at your salon", 16,
                        Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 0;
                        });
                      },
                      child: fontstyle(
                        selected == 0 ? "Added" : "Add",
                        16,
                        selected == 0
                            ? Colors.grey
                            : const Color.fromRGBO(80, 67, 217, 1),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    fontstyle(
                      "Add",
                      16,
                      const Color.fromRGBO(80, 67, 217, 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    fontstyle(
                      "Add",
                      16,
                      const Color.fromRGBO(80, 67, 217, 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    fontstyle(
                      "Add",
                      16,
                      const Color.fromRGBO(80, 67, 217, 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    fontstyle(
                      "Add",
                      16,
                      const Color.fromRGBO(80, 67, 217, 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    fontstyle(
                      "Add",
                      16,
                      const Color.fromRGBO(80, 67, 217, 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    fontstyle(
                      "Add",
                      16,
                      const Color.fromRGBO(80, 67, 217, 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: add_amount()));
              },
              child: constbutton(
                  "Save", const Color.fromRGBO(80, 67, 217, 1), Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
