import 'package:barbo/conts/text.dart';
import 'package:barbo/widgets/button.dart';
import 'package:flutter/material.dart';

class payment_screen extends StatefulWidget {
  const payment_screen({super.key});

  @override
  State<payment_screen> createState() => _payment_screenState();
}

class _payment_screenState extends State<payment_screen> {
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
                    fontstyle("Show Total amount", 26, Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    booking_tile(
                                        "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                                        "Decadence Hair",
                                        "Mohan - 8 pm"),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/earning.png"))),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            fontstyle("Sunday 8 Nov.", 20,
                                                Colors.black),
                                            fontstyle("8 pm - 9 pm", 14,
                                                Colors.black),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/earning.png"))),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            fontstyle("Team Member name", 20,
                                                Colors.black),
                                            fontstyle(
                                                "Mohan", 14, Colors.black),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/earning.png"))),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        fontstyle("Overview", 20, Colors.black),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    fontstyle("hair cut", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("hair cut", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("hair cut", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("hair cut", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("hair cut", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("Total", 16, Colors.black)
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 130,
                                    ),
                                    fontstyle("", 16, Colors.black),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    fontstyle("", 16, Colors.black),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    fontstyle("", 16, Colors.black),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    fontstyle("₹100", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("₹100", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("₹100", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("₹100", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("₹100", 16, Colors.black),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    fontstyle("₹400", 16, Colors.black),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ]),
            ),
            InkWell(
              onTap: () {},
              child: constbutton(
                  "Pay", const Color.fromRGBO(80, 67, 217, 1), Colors.white),
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
    width: 280,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
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
              const SizedBox(
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
        ],
      ),
    ),
  );
}
