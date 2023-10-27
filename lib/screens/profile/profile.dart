import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/profile/add_services.dart';
import 'package:barbo/widgets/button.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _number = TextEditingController();

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
                fontstyle("Profile", 26, Colors.black),
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            fontstyle("Contact", 20, Colors.black),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("Full Name", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _name,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("Email", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _email,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("Mobile number", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            fontstyle("Your services", 20, Colors.black),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("Salon Type", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _name,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("Opening Time", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _email,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("Closing Time", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: add_scalon()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.add_circle_rounded,
                            color: Color.fromRGBO(80, 67, 217, 1),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          fontstyle("Add Services", 15, Colors.black),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 390,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            fontstyle("Address", 20, Colors.black),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("Apt, Suite or Building", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _name,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("Area,Seactor or Locality", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _email,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        fontstyle("City", 15, Colors.grey),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    consttextfield(TextField(
                      controller: _number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: constbutton(
                  "Save", const Color.fromRGBO(80, 67, 217, 1), Colors.white),
            ),
          ]),
        ),
      ),
    );
  }
}
