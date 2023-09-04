import 'package:flutter/material.dart';
import 'package:vet_health/custom%20widgets/my_listView.dart';

import '../custom widgets/my_searchBar.dart';

class DairyPage extends StatefulWidget {
  const DairyPage({super.key});

  @override
  State<DairyPage> createState() => _DairyPageState();
}

class _DairyPageState extends State<DairyPage>with TickerProviderStateMixin {
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
                          'Product',
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
                          'Generic',
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
          const MySearchBar(),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    leading: SizedBox(height: 35,child: Image.asset('assets/images/Icon_Product_Details_001.png')),
                    title: Text("Product Name ${index + 1}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue[900])),
                    subtitle: Text('Product Description ${index + 1}', style: const TextStyle(fontSize: 12, color: Colors.blue),),
                    trailing: Icon(Icons.arrow_forward_rounded),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    leading: SizedBox(height: 35,child: Image.asset('assets/images/Icon_Product_Details_001.png')),
                    title: Text("Generic Name ${index + 1}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue[900])),
                    subtitle: Text('Generic Description ${index + 1}', style: const TextStyle(fontSize: 12, color: Colors.blue),),
                    trailing: Icon(Icons.arrow_forward_rounded),
                  ),
                );
              },
            ),
          ]))
        ],
      ),
    );
  }
}
