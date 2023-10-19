import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/dashboard/dashbordui.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final TextEditingController _salonnamecontroller = TextEditingController();
  final TextEditingController _salonemailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Registration", 26, Colors.black),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Enter salon's name", 18, Colors.grey),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          consttextfield(TextField(
            controller: _salonnamecontroller,
          )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Enter salon's email address", 18, Colors.grey),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          consttextfield(TextField(
            controller: _salonemailcontroller,
          )),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: const dashbordui()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(80, 67, 217, 1)),
                  child: const Center(
                      child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
