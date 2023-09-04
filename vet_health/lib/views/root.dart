import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../custom widgets/my_navDrawer.dart';
import '../views/aquaPage.dart';
import '../views/dairyPage.dart';
import '../views/doctorPage.dart';
import '../views/homepage.dart';
import '../views/poultryPage.dart';

class Root extends StatefulWidget {
  const Root({Key? key});

  @override
  State<Root> createState() => _Root();
}

class _Root extends State<Root> {
  int selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const HomePage(),
    const DairyPage(),
    const DoctorPage(),
    const PoultryPage(),
    const AquaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyNavDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.refresh_rounded,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.flag_circle,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.flag_circle,
                color: Colors.white,
              )),
        ],
        backgroundColor: const Color.fromARGB(255, 33, 17, 105),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 33, 17, 105),
        color: const Color.fromARGB(255, 33, 17, 105),
        animationDuration: const Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: [
          _buildIconWithText(Icons.home, 'Home', 0),
          _buildIconWithText(Icons.menu, 'Dairy', 1),
          _buildIconWithText(Icons.work, 'Doctor', 2),
          _buildIconWithText(Icons.safety_check, 'Poultry', 3),
          _buildIconWithText(Icons.water, 'Aqua', 4),
        ],
        index: selectedIndex,
      ),
    );
  }

  Widget _buildIconWithText(IconData iconData, String label, int index) {
    final bool isSelected = index == selectedIndex;
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
            child: Center(
                child: Icon(iconData,
                    size: 25,
                     color: isSelected ? Colors.white : Color.fromARGB(255, 108, 126, 134),)),
          ),
          Text(
            label,
            style: TextStyle(
               color: isSelected ? Colors.white : Color.fromARGB(255, 108, 126, 134), fontSize: 12
            ),
          ),
        ],
      ),
    );
  }
}
