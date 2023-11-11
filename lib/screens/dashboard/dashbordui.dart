import 'package:barbo/screens/dasboard_owner/dashboard_owner.dart';
import 'package:barbo/screens/dashboard/widgets_dashboard.dart';
import 'package:barbo/screens/notificaion/notification.dart';
import 'package:barbo/screens/salon_details/salon_details.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../conts/text.dart';
import '../../widgets/cat_tile.dart';

class dashbordui extends StatefulWidget {
  const dashbordui({super.key});

  @override
  State<dashbordui> createState() => _dashborduiState();
}

class _dashborduiState extends State<dashbordui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  fontstyle("Recommended", 18, Colors.black),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: salon_details()));
                      },
                      child: salontile(
                          "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                          "Decadence Hair & Beauty",
                          "5.0",
                          "36 store St,London"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    salontile(
                        "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                        "Decadence Hair & Beauty",
                        "5.0",
                        "36 store St,London"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  fontstyle("Top salons in your city", 18, Colors.black),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    salontile(
                        "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                        "Decadence Hair & Beauty",
                        "5.0",
                        "36 store St,London"),
                    const SizedBox(
                      width: 20,
                    ),
                    salontile(
                        "https://www.giellesse.it/wp-content/uploads/2019/05/01-Giellesse-Salone-2019-9648-3-1-1200x675.jpg",
                        "Decadence Hair & Beauty",
                        "5.0",
                        "36 store St,London"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  fontstyle("Categories", 18, Colors.black),
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
            ],
          ),
        ),
      ),
    );
  }
}
