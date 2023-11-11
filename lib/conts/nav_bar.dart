import 'dart:io';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:barbo/conts/text.dart';
import 'package:barbo/screens/dasboard_owner/dashboard_owner.dart';
import 'package:barbo/screens/dashboard/dashbordui.dart';
import 'package:barbo/screens/notificaion/notification.dart';
import 'package:barbo/screens/profile/profile.dart';
import 'package:barbo/screens/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    const dashbordui(),
    const search_screen(),
    const profile(),
  ];

  int _bottomNavIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo.png"))),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: const notification()));
                      },
                      child: const Icon(Icons.notifications)),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const dashboard_owner()));
                    },
                    icon: const Icon(Icons.menu),
                  )
                ],
              )
            ],
          ),
        ),
        body: IndexedStack(
          index: _bottomNavIndex,
          children: pages,
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_mini_outlined,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.search),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.person),
                ),
              ],
              currentIndex: _bottomNavIndex,
              selectedItemColor: const Color.fromRGBO(80, 67, 217, 1),
              iconSize: 30,
              onTap: _onItemTapped,
              elevation: 5),
        ));
  }
}
