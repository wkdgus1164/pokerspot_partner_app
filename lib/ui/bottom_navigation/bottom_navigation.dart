import 'package:flutter/material.dart';
import 'package:pokerspot_partner_app/ui/bottom_navigation/destinations.dart';
import 'package:pokerspot_partner_app/ui/main/sections/home/views/home_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 234, 234, 234),
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentPageIndex,
          items: bottomNavigationItems,
          onTap: (index) => setState(() {
            currentPageIndex = index;
          }),
        ),
      ),
      body: const HomeView(),
    );
  }
}
