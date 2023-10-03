import 'dart:io';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:barbo/screens/dashboard/dashbordui.dart';
import 'package:barbo/screens/profile/profile.dart';
import 'package:barbo/screens/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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

  List<IconData> listOfIcons = [
    Icons.home_mini_outlined,
    Icons.search_rounded,
    Icons.person,
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
      body: IndexedStack(
        index: _bottomNavIndex,
        children: pages,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: AnimatedBottomNavigationBar(
          elevation: 600,
          backgroundColor: Colors.white,
          height: 80,
          iconSize: 30,
          icons: listOfIcons,
          activeIndex: _bottomNavIndex,
          activeColor: const Color.fromRGBO(80, 67, 217, 1),
          inactiveColor: Colors.black12,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }
}
