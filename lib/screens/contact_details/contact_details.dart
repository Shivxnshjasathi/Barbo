import 'package:barbo/conts/text.dart';
import 'package:flutter/material.dart';

class contact_details extends StatefulWidget {
  const contact_details({super.key});

  @override
  State<contact_details> createState() => _contact_detailsState();
}

class _contact_detailsState extends State<contact_details> {
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
                fontstyle("Contact Details", 26, Colors.black),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Contact_details(
                "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                "Shivnsh jasathi",
                "₹ 400",
                "6pm",
                "978345643",
                "aim@gaiml.com",
                "male"),
          ]),
        ),
      ),
    );
  }
}

Widget Contact_details(
  String img,
  String name,
  String amount,
  String time,
  String mobileno,
  String mail,
  String gender,
) {
  return Container(
    height: 180,
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
                height: 100,
                width: 100,
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
                  const SizedBox(
                    height: 2,
                  ),
                  fontstyle(time, 14, Colors.black),
                  const SizedBox(
                    height: 2,
                  ),
                  fontstyle(mobileno, 14, Colors.black),
                  const SizedBox(
                    height: 2,
                  ),
                  fontstyle(mail, 14, Colors.black),
                  const SizedBox(
                    height: 2,
                  ),
                  fontstyle(gender, 14, Colors.black),
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
