import 'package:flutter/material.dart';
import '../custom widgets/my_navDrawer.dart';
import 'dairyPage.dart';

class HomeDairyPage extends StatelessWidget {
  const HomeDairyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Dairy',textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: const Color.fromARGB(255, 33, 17, 105),
            ),
            drawer: const MyNavDrawer(),
            body: const DairyPage()));
  }
}
