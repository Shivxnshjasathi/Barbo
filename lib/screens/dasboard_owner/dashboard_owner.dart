import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/booking_details/booking_details.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class dashboard_owner extends StatefulWidget {
  const dashboard_owner({super.key});

  @override
  State<dashboard_owner> createState() => _dashboard_ownerState();
}

class _dashboard_ownerState extends State<dashboard_owner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("Dashboard", 26, Colors.black),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                fontstyle("Hi , Decadence Hair", 16, Colors.black),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            stats_tile("Earning is month", "₹ 400", "assets/earning.png"),
            const SizedBox(
              height: 10,
            ),
            stats_tile(
                "Appointments in this month", "4", "assets/appointment.png"),
            const SizedBox(
              height: 10,
            ),
            stats_tile("Ratings", "4.5", "assets/star.png"),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    fontstyle("See your busniess", 26, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const booking_details()));
                    },
                    child: stats_tile("Upcomings Appointments", "4",
                        "assets/appointment2.png")),
                const SizedBox(
                  height: 10,
                ),
                stats_tile(
                    "Canclled Appointments", "4.5", "assets/appointment1.png"),
                const SizedBox(
                  height: 10,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

Widget stats_tile(String text2, String text3, String img) {
  return Container(
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  fontstyle(text3, 20, Colors.black),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(img))),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              fontstyle(text2, 16, Colors.black),
            ],
          )));
}

Widget booking_tile(String text4) {
  return Container(
      width: 170,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: fontstyle(text4, 16, Colors.black),
          )));
}
