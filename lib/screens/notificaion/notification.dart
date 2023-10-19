import 'package:barbo/conts/text.dart';
import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
                fontstyle("Notification", 26, Colors.black),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            notification_tile(
                "The Indian Premier League is a men's Twenty20 cricket league that is annually held in India and contested by ten city-based franchise teams. The BCCI founded the league in 2007. The competition is usually held in summer between March and May every year.")
          ]),
        ),
      ),
    );
  }
}

Widget notification_tile(String text2) {
  return Container(
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: fontstyle(text2, 16, Colors.black),
      ));
}
