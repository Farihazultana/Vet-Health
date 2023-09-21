import 'package:flutter/material.dart';
import 'package:vet_health/custom%20widgets/my_listView.dart';

import '../custom widgets/my_ShowDescription.dart';
import '../custom widgets/my_searchBar.dart';

class PoultryPage extends StatefulWidget {
  const PoultryPage({super.key});

  @override
  State<PoultryPage> createState() => _PoultryPageState();
}

class _PoultryPageState extends State<PoultryPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    List<Widget> generateParagraphs() {
      List<Widget> paragraphs = [];
      paragraphs.add(Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 20,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 36, 82, 161)),
            child: const Padding(
              padding: EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Water sluble powder',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'A-Cold Vet',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              color: Colors.blueAccent[100],
            ),
            child: const Text(
              'Bromhexline Hydrochloride',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          )
        ],
      ));
      paragraphs.add(Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(color: Colors.blueAccent[200]),
        child: const Padding(
          padding: EdgeInsets.all(3.0),
          child: Text(
            'Composition',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
        ),
      ));
      paragraphs.add(
          const Text('Each gram contains Bromhexine Hydrochloride BP 10 mg.'));
      paragraphs.add(Container(
          width: MediaQuery.of(context).size.width - 20,
          decoration: const BoxDecoration(color: Colors.blueAccent),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pharmacology',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              
            ],
          )));

      return paragraphs;
    }

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
                    leading: SizedBox(
                        height: 35,
                        child: Image.asset(
                            'assets/images/Icon_Product_Details_002.png')),
                    title: Text("Poultry Name ${index + 1}",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900])),
                    subtitle: Text(
                      'Poultry Description ${index + 1}',
                      style: const TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyShowDescription(
                                    paragraph: generateParagraphs(),
                                  )));
                    },
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
                    leading: SizedBox(
                        height: 35,
                        child: Image.asset(
                            'assets/images/Icon_Product_Details_002.png')),
                    title: Text("Generic Name ${index + 1}",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900])),
                    subtitle: Text(
                      'Generic Description ${index + 1}',
                      style: const TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                    trailing: Icon(Icons.arrow_forward_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyShowDescription(
                                    paragraph: generateParagraphs(),
                                  )));
                    },
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
