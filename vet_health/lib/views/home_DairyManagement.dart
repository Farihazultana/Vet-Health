import 'package:flutter/material.dart';
import '../custom widgets/my_ShowDescription.dart';
import '../custom widgets/my_searchBar.dart';

class HomeDairyManagement extends StatefulWidget {
  const HomeDairyManagement({super.key});

  @override
  State<HomeDairyManagement> createState() => _HomeDairyManagement();
}

class _HomeDairyManagement extends State<HomeDairyManagement> with TickerProviderStateMixin {
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
                    'Sterlie Injection Solution',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'A-Cal Vet',
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
              'Calcium Gluconet BP, Magnesium Hypophosphite Hexahydrate INN & Boric Acid',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          )
        ],
      ));
      paragraphs.add(Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration:
            BoxDecoration(color: Colors.blueAccent[200]),
        child: const Padding(
          padding: EdgeInsets.all(3.0),
          child: Text(
            'Composition',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16, color: Colors.black),
          ),
        ),
      ));
      paragraphs.add(const Text('Each 250 ml contains'));
      paragraphs.add(Container(
          width: MediaQuery.of(context).size.width - 20,
          decoration: const BoxDecoration(color: Colors.blueAccent),
          child: const Text(
            'Pharmacology',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          )));

      return paragraphs;
    }

    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
              title: const Text('Dairy',textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: const Color.fromARGB(255, 33, 17, 105),
            ),
        body: Scaffold(
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
                              'Farm Management',
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
                                'assets/images/Icon_Product_Details_001.png')),
                        title: Text("Product Name ${index + 1}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900])),
                        subtitle: Text(
                          'Disease Description ${index + 1}',
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
                                'assets/images/Icon_Product_Details_001.png')),
                        title: Text("Generic Name ${index + 1}",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[900])),
                        subtitle: Text(
                          'Farm Description ${index + 1}',
                          style: const TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                        trailing: const Icon(Icons.arrow_forward_rounded),
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
        ),
      ),
    );
  }
}
