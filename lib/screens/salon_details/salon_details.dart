import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/salon_details/select_service.dart';
import 'package:barbo/widgets/button.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class salon_details extends StatefulWidget {
  const salon_details({super.key});

  @override
  State<salon_details> createState() => _salon_detailsState();
}

class _salon_detailsState extends State<salon_details> {
  final TextEditingController _searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  fontstyle("Decadence Hair", 18, Colors.black),
                  Row(
                    children: [
                      fontstyle("4.5", 16, Colors.black),
                      const Icon(Icons.star)
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                ]),
                Container(
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: fontstyle("Make as your salon", 16, Colors.black),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 290,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 400,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.network(
                            "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
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
                                fontstyle(
                                    "Prices starts at 100", 20, Colors.black),
                                const SizedBox(
                                  height: 10,
                                ),
                                fontstyle("salon type", 16, Colors.black),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            const Icon(Icons.directions)
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            consttextfield(TextField(
              controller: _searchcontroller,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 242,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    SizedBox(
                      width: 400,
                      height: 240,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                fontstyle("Services offered by Salon", 16,
                                    Colors.black),
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
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                fontstyle("", 16, Colors.black),
                                const SizedBox(
                                  height: 20,
                                ),
                                fontstyle("100", 16, Colors.black),
                                const SizedBox(
                                  height: 10,
                                ),
                                fontstyle("100", 16, Colors.black),
                                const SizedBox(
                                  height: 10,
                                ),
                                fontstyle("100", 16, Colors.black),
                                const SizedBox(
                                  height: 10,
                                ),
                                fontstyle("100", 16, Colors.black),
                                const SizedBox(
                                  height: 10,
                                ),
                                fontstyle("100", 16, Colors.black),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: fontstyle("Show all", 16, Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("Amenities of salon", 18, Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                circle(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg"),
                const SizedBox(
                  width: 10,
                ),
                circle(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg"),
                const SizedBox(
                  width: 10,
                ),
                circle(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg"),
                const SizedBox(
                  width: 10,
                ),
                circle(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("Staff of salon", 18, Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                circle(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg"),
                const SizedBox(
                  width: 10,
                ),
                circle(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg"),
                const SizedBox(
                  width: 10,
                ),
                circle(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg"),
                const SizedBox(
                  width: 10,
                ),
                circle(
                    "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("costomer reviews", 18, Colors.black),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                review_tile("good for ALL"),
                const SizedBox(
                  height: 10,
                ),
                review_tile("good for ALL"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: select_service()));
              },
              child: constbutton(
                  "Book", const Color.fromRGBO(80, 67, 217, 1), Colors.white),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget circle(String img) {
  return Container(
    height: 80,
    width: 80,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        img,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget review_tile(String text2) {
  return Container(
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: fontstyle(text2, 16, Colors.black),
      ));
}
