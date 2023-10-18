import 'package:barbo/conts/text.dart';
import 'package:barbo/widgets/button.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';

class business_owner_login extends StatefulWidget {
  const business_owner_login({super.key});

  @override
  State<business_owner_login> createState() => _business_owner_loginState();
}

class _business_owner_loginState extends State<business_owner_login> {
  final TextEditingController _owneremailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset("assets/login_vector_owner.png", height: 180, width: 180),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Greetings Owner", 26, Colors.black),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Bussiness Email", 18, Colors.grey),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          consttextfield(TextField(
            controller: _owneremailcontroller,
            decoration: const InputDecoration(border: InputBorder.none),
          )),
          const SizedBox(
            height: 20,
          ),
          constbutton(
              "Login", const Color.fromRGBO(0, 128, 129, 1), Colors.white),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Salon not registered?  ", 18, Colors.grey),
              fontstyle(
                  "Register here", 18, const Color.fromRGBO(0, 128, 129, 1)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                child: const Divider(
                  color: Colors.grey,
                  height: 3,
                  thickness: 2,
                ),
              ),
              fontstyle("or sign in with  ", 15, Colors.grey),
              Container(
                width: 100,
                child: const Divider(
                  color: Colors.grey,
                  height: 3,
                  thickness: 2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          constbutton("Sign in With Google", Colors.black12, Colors.black),
        ]),
      ),
    );
  }
}
