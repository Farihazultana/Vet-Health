import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
       
        backgroundColor: const Color.fromARGB(255, 39, 34, 85),
        color: const Color.fromARGB(255, 39, 34, 85),
        animationDuration: const Duration(milliseconds: 200),
        onTap: (index){
          print(index);
        },
        items: [
        _buildIconWithText(Icons.home,'Home', const Color.fromARGB(255, 108, 126, 134),),
        _buildIconWithText(Icons.menu,'Dairy',const Color.fromARGB(255, 108, 126, 134),),
        _buildIconWithText(Icons.work,'Doctor',const Color.fromARGB(255, 108, 126, 134),),
        _buildIconWithText(Icons.safety_check,'Poultry',const Color.fromARGB(255, 108, 126, 134),),
        _buildIconWithText(Icons.water,'Aqua',const Color.fromARGB(255, 108, 126, 134),)
      ]),
      
    );
  }

Widget _buildIconWithText(IconData iconData, String label, Color backgroundColor) {
  return Container(
    padding: const EdgeInsets.only(left:5.0, top: 8.0, right: 5.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundColor: backgroundColor, // Set the background color here
            radius: 20, // Adjust the radius as needed
            child: Icon(iconData, size: 30, color: Colors.white),
          ),
        ),
        //const SizedBox(height: 3), // Adjust the spacing between icon and text
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}


}