import 'package:barbo/conts/text.dart';
import 'package:flutter/material.dart';

class search_options extends StatefulWidget {
  const search_options({super.key});

  @override
  State<search_options> createState() => _search_optionsState();
}

class _search_optionsState extends State<search_options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            salon_tile(
              "https://media.istockphoto.com/id/1320345717/photo/various-cosmetic-accessories-for-makeup-and-manicure-on-trendy-pastel-pink-background-with.jpg?s=612x612&w=0&k=20&c=H35tfZdnHIBJLjXiX2Jfzoq32U8DrZEhZ__5l_05LsM=",
              "Dame Hair Salon",
              "4.5",
              "₹ 100",
            ),
            const SizedBox(
              height: 10,
            ),
            salon_tile(
              "https://media.istockphoto.com/id/1320345717/photo/various-cosmetic-accessories-for-makeup-and-manicure-on-trendy-pastel-pink-background-with.jpg?s=612x612&w=0&k=20&c=H35tfZdnHIBJLjXiX2Jfzoq32U8DrZEhZ__5l_05LsM=",
              "Dame Hair Salon",
              "4.5",
              "₹ 100",
            ),
          ]),
        ),
      ),
    );
  }
}

Widget salon_tile(String img, String salonname, String rating, String amount) {
  return Container(
      height: 330,
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
                  img,
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  fontstyle(salonname, 20, Colors.black),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star),
                      fontstyle(rating, 16, Colors.black),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey)),
                          child: Center(
                            child: fontstyle(
                                "Starts at " + amount, 16, Colors.black),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey)),
                          child: Center(
                            child: fontstyle("View Details", 16, Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ));
}
