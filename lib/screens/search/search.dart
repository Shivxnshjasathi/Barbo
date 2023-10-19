import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/dashboard/dashbordui.dart';
import 'package:barbo/screens/search/search_options.dart';
import 'package:barbo/widgets/button.dart';
import 'package:barbo/widgets/cat_tile.dart';
import 'package:barbo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {
  final TextEditingController _search = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();

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
                fontstyle("Search", 26, Colors.black),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("Search", 18, Colors.grey),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            consttextfield(TextField(
              controller: _search,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("Location", 18, Colors.grey),
              ],
            ),
            consttextfield(TextField(
              controller: _search,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const dashbordui()));
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: search_options()));
                },
                child: constbutton("Search",
                    const Color.fromRGBO(80, 67, 217, 1), Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fontstyle("Categories", 22, Colors.black),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cat_tile(
                    "https://media.istockphoto.com/id/1320345717/photo/various-cosmetic-accessories-for-makeup-and-manicure-on-trendy-pastel-pink-background-with.jpg?s=612x612&w=0&k=20&c=H35tfZdnHIBJLjXiX2Jfzoq32U8DrZEhZ__5l_05LsM=",
                    "Makeup"),
                cat_tile(
                    "https://media.istockphoto.com/id/1320345717/photo/various-cosmetic-accessories-for-makeup-and-manicure-on-trendy-pastel-pink-background-with.jpg?s=612x612&w=0&k=20&c=H35tfZdnHIBJLjXiX2Jfzoq32U8DrZEhZ__5l_05LsM=",
                    "Makeup")
              ],
            )
          ]),
        ),
      ),
    );
  }
}
