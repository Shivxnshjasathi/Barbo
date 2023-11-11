import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/salon_details/select_timing.dart';
import 'package:barbo/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class select_service extends StatefulWidget {
  const select_service({super.key});

  @override
  State<select_service> createState() => _select_serviceState();
}

class _select_serviceState extends State<select_service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    fontstyle("Select Services", 26, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                booking_tile(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                    "hair cut",
                    "₹ 400"),
                const SizedBox(
                  height: 10,
                ),
                booking_tile(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                    "hair color",
                    "₹ 400"),
                const SizedBox(
                  height: 10,
                ),
                booking_tile(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                    "make up",
                    "₹ 400")
              ]),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: select_timings()));
              },
              child: constbutton(
                  "Book", const Color.fromRGBO(80, 67, 217, 1), Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

Widget booking_tile(
  String img,
  String name,
  String amount,
) {
  return Container(
    height: 80,
    width: 400,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.black12),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  fontstyle(name, 16, Colors.black),
                  const SizedBox(
                    height: 2,
                  ),
                  fontstyle(amount, 14, Colors.black),
                ],
              )
            ],
          ),
          const Icon(Icons.check_box)
        ],
      ),
    ),
  );
}
