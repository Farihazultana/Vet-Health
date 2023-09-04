import 'package:flutter/material.dart';
import 'package:vet_health/custom%20widgets/my_listView.dart';
import 'package:vet_health/custom%20widgets/my_searchBar.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 157, 170).withOpacity(0.3),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 40, 135, 230),
                  borderRadius: BorderRadius.circular(10)),
              child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 33, 17, 105)),
                controller: tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 0),
                labelStyle: const TextStyle(
                  color: Colors.white,
                ),
                unselectedLabelStyle: TextStyle(
                  color: Colors.lightBlue[200],
                ),
                unselectedLabelColor: Colors.lightBlue[200],
                tabs: [
                  Tab(
                    child: SizedBox(
                      width: 140,
                      child: Center(
                        child: Text(
                          'Disease',
                          style: TextStyle(
                              color: Colors.lightBlue[200],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      width: 140,
                      child: Center(
                        child: Text(
                          'Prescription',
                          style: TextStyle(
                              color: Colors.lightBlue[200],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          Expanded(
              child: TabBarView(controller: tabController, children: [
            SizedBox(height: 50,child: Image.asset('assets/images/prescription_icon.png')),
            Center(child: Text('Prescription Detail')),
          ]))
        ],
      ),
    );
  }
}
