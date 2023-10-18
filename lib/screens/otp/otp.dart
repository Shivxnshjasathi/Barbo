import 'package:barbo/screens/login/login_ui_user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:barbo/conts/nav_bar.dart';
import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/dashboard/dashbordui.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:page_transition/page_transition.dart';

class otp extends StatefulWidget {
  // const otp({super.key});

  final String email;

  otp({required this.email});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  final TextEditingController _otpcontroller = TextEditingController();

  Future<void> verifyOTP() async {
    String otp = _otpcontroller.text.trim();

    // final Map<String, String> headers = {
    //   'Authorization': 'Token YOUR_API_TOKEN',
    // };

    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/verify-otp/'),
      body: {'email': widget.email, 'otp': otp},
    );

    if (response.statusCode == 200) {
      // OTP verification successful, navigate to SuccessScreen
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => SuccessScreen(),
      //   ),
      // );

      // final apiKey = response.body;

      // final storage = FlutterSecureStorage();
      // await storage.write(key: 'login_status', value: "True");

      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade, child: login_ui_user()));
    } else {
      // Handle error (e.g., display an error message)
      print('OTP verification failed: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Verify", 26, Colors.black),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle("Please enter the four digit code", 18, Colors.grey),
              Text("Sent to: ${widget.email}",
                  style: TextStyle(fontSize: 18, color: Colors.grey)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          consttextfield(TextField(
            controller: _otpcontroller,
            decoration: const InputDecoration(border: InputBorder.none),
          )),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fontstyle(
                  "Resend code", 18, const Color.fromRGBO(80, 67, 217, 1)),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.fade, child: HomePage()));

                  // String otp = _otpcontroller.text.trim();
                  verifyOTP();
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
