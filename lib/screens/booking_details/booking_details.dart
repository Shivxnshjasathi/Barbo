import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/contact_details/contact_details.dart';
import 'package:barbo/screens/notificaion/notification.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class booking_details extends StatefulWidget {
  const booking_details({super.key});

  @override
  State<booking_details> createState() => _booking_detailsState();
}

class _booking_detailsState extends State<booking_details> {
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
                fontstyle("Booking Details", 26, Colors.black),
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
                        child: const contact_details()));
              },
              child: booking_tile(
                  "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                  "Shivnsh jasathi",
                  "₹ 400"),
            ),
            const SizedBox(
              height: 10,
            ),
            booking_tile(
                "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                "Shivnsh jasathi",
                "₹ 400"),
            const SizedBox(
              height: 10,
            ),
            booking_tile(
                "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                "Shivnsh jasathi",
                "₹ 400")
          ]),
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
          const Icon(Icons.call)
        ],
      ),
    ),
  );
}
