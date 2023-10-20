import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/payment_screen/payment_screen.dart';
import 'package:barbo/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class select_timings extends StatefulWidget {
  const select_timings({super.key});

  @override
  State<select_timings> createState() => _select_timingsState();
}

class _select_timingsState extends State<select_timings> {
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    fontstyle("Select Timing", 26, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    circle("1"),
                    const SizedBox(
                      width: 10,
                    ),
                    circle("2"),
                    const SizedBox(
                      width: 10,
                    ),
                    circle("3"),
                    const SizedBox(
                      width: 10,
                    ),
                    circle("4"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    fontstyle("Select time slot", 18, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        timeing_tile("12 pm"),
                        const SizedBox(
                          width: 10,
                        ),
                        timeing_tile("12 pm"),
                        const SizedBox(
                          width: 10,
                        ),
                        timeing_tile("12 pm"),
                        const SizedBox(
                          width: 10,
                        ),
                        timeing_tile("12 pm"),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        timeing_tile("12 pm"),
                        const SizedBox(
                          width: 10,
                        ),
                        timeing_tile("12 pm"),
                        const SizedBox(
                          width: 10,
                        ),
                        timeing_tile("12 pm"),
                        const SizedBox(
                          width: 10,
                        ),
                        timeing_tile("12 pm"),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    fontstyle("Select Staff", 18, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                booking_tile(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                    "Ravi",
                    "₹ 400"),
                const SizedBox(
                  height: 10,
                ),
                booking_tile(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                    "Mohan",
                    "₹ 400"),
                const SizedBox(
                  height: 10,
                ),
                booking_tile(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                    "kala",
                    "₹ 400")
              ]),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: payment_screen()));
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

Widget circle(String date) {
  return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.black12),
      child: Center(
        child: fontstyle(date, 16, Colors.black),
      ));
}

Widget timeing_tile(String time) {
  return Container(
    height: 30,
    width: 78,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.black12),
    child: Center(
      child: fontstyle(time, 16, Colors.black),
    ),
  );
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
