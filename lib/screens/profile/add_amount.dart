import 'package:barbo/conts/text.dart';
import 'package:barbo/widgets/button.dart';
import 'package:barbo/widgets/textfiled2.dart';
import 'package:flutter/material.dart';

class add_amount extends StatefulWidget {
  const add_amount({super.key});

  @override
  State<add_amount> createState() => _add_amountState();
}

class _add_amountState extends State<add_amount> {
  final TextEditingController _amountcontroller = TextEditingController();

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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    fontstyle("Add Amount", 26, Colors.black),
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
                    consttextfield2(TextField(
                      controller: _amountcontroller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    consttextfield2(TextField(
                      controller: _amountcontroller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    fontstyle("Make up", 16, Colors.black),
                    consttextfield2(TextField(
                      controller: _amountcontroller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                  ],
                ),
              ]),
            ),
            InkWell(
              onTap: () {},
              child: constbutton(
                  "Save", const Color.fromRGBO(80, 67, 217, 1), Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
