import 'package:flutter/material.dart';
import 'package:vet_health/custom%20widgets/my_carouselSlider.dart';
import 'package:vet_health/views/doctorPage.dart';
import 'package:vet_health/views/home_AquaPage.dart';
import 'package:vet_health/views/home_DairyManagement.dart';
import 'package:vet_health/views/home_DoctorPage.dart';
import 'package:vet_health/views/home_PoultryPage.dart';
import 'Home_DairyPage.dart';
import 'home_AquaManagement.dart';
import 'home_PoultryManagement.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeDairyPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
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
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePoultryPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
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
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeAquaPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeDairyManagement()));
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeDairyManagement()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.blue, width: 2.0),
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(
                            'assets/images/Icon_Disease_&_Treatment_001.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HomePoultryManagement()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(5)),
                            child: Image.asset(
                              'assets/images/Icon_Disease_&_Treatment_002.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeAquaManagement()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(5)),
                            child: Image.asset(
                              'assets/images/Icon_Disease_&_Treatment_003.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeDoctorPage()));
              },
              child: Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}
