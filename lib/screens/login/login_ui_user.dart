import 'package:barbo/conts/nav_bar.dart';
import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/dashboard/dashbordui.dart';
import 'package:barbo/screens/login/business_owner_login%20.dart';
import 'package:barbo/screens/otp/otp.dart';
import 'package:barbo/screens/register/register_ui.dart';
import 'package:barbo/widgets/button.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:page_transition/page_transition.dart';

class login_ui_user extends StatefulWidget {
  const login_ui_user({super.key});

  @override
  State<login_ui_user> createState() => _login_ui_userState();
}

class _login_ui_userState extends State<login_ui_user> {
  final TextEditingController _emailcontroller = TextEditingController();

  Future<void> sendOTP() async {
    String email = _emailcontroller.text.trim();

    final Map<String, String> headers = {
      'Authorization': 'Token YOUR_API_TOKEN',
    };

    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/send-otp/'),
      headers: headers,
      body: {'email': email},
    );

    if (response.statusCode == 200) {
      // OTP sent successfully, navigate to OTPScreen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => otp(email: email),
        ),
      );
    } else {
      // Handle error
      print('Failed to send OTP: ${response.statusCode}');
    }
  }

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
          Image.asset("assets/login_vector.png", height: 180, width: 180),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Welcome back", 26, Colors.black),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Email", 18, Colors.grey),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          consttextfield(TextField(
            controller: _emailcontroller,
            decoration: const InputDecoration(border: InputBorder.none),
          )),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     PageTransition(
              //         type: PageTransitionType.fade, child: const otp()));

              sendOTP();
            },
            child: constbutton(
                "Login", const Color.fromRGBO(80, 67, 217, 1), Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: const register()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("New Here?  ", 18, Colors.grey),
                fontstyle("Create an account", 18,
                    const Color.fromRGBO(80, 67, 217, 1)),
              ],
            ),
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
                      child: const business_owner_login()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("Business Owners?  ", 18, Colors.grey),
                fontstyle(
                    "Click here", 18, const Color.fromRGBO(80, 67, 217, 1)),
              ],
            ),
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
    ));
  }
}
