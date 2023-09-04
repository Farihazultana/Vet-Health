import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../views/aquaPage.dart';
import '../views/dairyPage.dart';
import '../views/doctorPage.dart';
import '../views/homepage.dart';
import '../views/poultryPage.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({super.key});

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int selectedIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const DairyPage(),
    const DoctorPage(),
    const PoultryPage(),
    const AquaPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: const Color.fromARGB(255, 33, 17, 105),
      color: const Color.fromARGB(255, 33, 17, 105),
      animationDuration: const Duration(milliseconds: 200),
      onTap: (index) {
        print(index);
        setState(() {
          selectedIndex = index; // Update the selected index
        });
      },
      items: [
        _buildIconWithText(
            Icons.home,
            'Home',
            selectedIndex == 0
                ? Colors.white
                : const Color.fromARGB(255, 108, 126, 134)),
        _buildIconWithText(
            Icons.menu,
            'Dairy',
            selectedIndex == 1
                ? Colors.white
                : const Color.fromARGB(255, 108, 126, 134)),
        _buildIconWithText(
            Icons.work,
            'Doctor',
            selectedIndex == 2
                ? Colors.white
                : const Color.fromARGB(255, 108, 126, 134)),
        _buildIconWithText(
            Icons.safety_check,
            'Poultry',
            selectedIndex == 3
                ? Colors.white
                : const Color.fromARGB(255, 108, 126, 134)),
        _buildIconWithText(
            Icons.water,
            'Aqua',
            selectedIndex == 4
                ? Colors.white
                : const Color.fromARGB(255, 108, 126, 134))
      ],
      index: 0,
    );
  }

  Widget _buildIconWithText(
      IconData iconData, String label, Color backgroundColor) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 12,
            child:
                Center(child: Icon(iconData, size: 25, color: backgroundColor)),
          ),

          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
