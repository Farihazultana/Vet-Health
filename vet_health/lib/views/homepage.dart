import 'package:flutter/material.dart';
import 'package:vet_health/custom%20widgets/my_bottomNavbar.dart';
import 'package:vet_health/custom%20widgets/my_carouselSlider.dart';
import '../custom widgets/my_navBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavbar(),
      drawer: const MyNavBar(),
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
        backgroundColor: const Color.fromARGB(255, 39, 34, 85),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Banner
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: MyCarouselSlider(),
            ),
            const Center(
              child: Text(
                'Product Details',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'assets/images/Icon_Product_Details_001.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'assets/images/Icon_Product_Details_002.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'assets/images/Icon_Product_Details_003.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'Farm & Disease Management',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'assets/images/Icon_Disease_&_Treatment_001.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'assets/images/Icon_Disease_&_Treatment_002.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        'assets/images/Icon_Disease_&_Treatment_003.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                'Prescription',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 25,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.note_add,
                  color: Colors.blue.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
