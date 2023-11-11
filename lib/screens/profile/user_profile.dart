import 'package:barbo/conts/text.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class user_profile extends StatefulWidget {
  const user_profile({super.key});

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Profile", 26, Colors.black),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Full name of Customer", 15, Colors.grey),
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
              fontstyle("Mobile Number", 15, Colors.grey),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Gmail", 15, Colors.grey),
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
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(80, 67, 217, 1)),
                    child: Center(
                      child: fontstyle("Edit", 18, Colors.white),
                    )),
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
