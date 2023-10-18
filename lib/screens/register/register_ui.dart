import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/dashboard/dashbordui.dart';
import 'package:barbo/screens/otp/otp.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:page_transition/page_transition.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final TextEditingController _salonnamecontroller = TextEditingController();
  final TextEditingController _salonemailcontroller = TextEditingController();

  Future<void> sendOTP() async {
    String salon_email = _salonnamecontroller.text.trim();

    // final Map<String, String> headers = {
    //   'Authorization': 'Token YOUR_API_TOKEN',
    // };

    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/send-otp/'),
      body: {'email': salon_email},
    );

    if (response.statusCode == 200) {
      // OTP sent successfully, navigate to OTPScreen

      // final apiKey = response.body;

      // final storage = FlutterSecureStorage();
      // await storage.write(key: 'api_key', value: apiKey);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => otp(email: salon_email),
        ),
      );
    } else {
      // Handle error
      print('Failed to send OTP: ${response.statusCode}');
    }
  }

  void registerUser() {
    // Get the input values
    final String salonemail = _salonemailcontroller.text.trim();
    final String salonName = _salonnamecontroller.text.trim();

    // Implement registration logic here
    // Send the data to your server for user registration
    // You may use a HTTP package like http.dart for making the POST request

    // After successful registration, navigate to the next screen
    // Example:
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => HomeScreen()), // Replace HomeScreen with your next screen
    // );
  }

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
            decoration: const InputDecoration(border: InputBorder.none),
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
            decoration: const InputDecoration(border: InputBorder.none),
          )),
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
                  //         type: PageTransitionType.fade, child: const otp()));

                  sendOTP();
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
