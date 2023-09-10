import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vet_health/custom%20widgets/my_TextInputWithHint.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> with TickerProviderStateMixin {
  final ImagePicker _picker = ImagePicker();
  PickedFile? _pickedImage;

  Future<void> _openCamera() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _pickedImage = pickedImage as PickedFile?;
    });
  }

  Future<void> _openGallery() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _pickedImage = pickedImage as PickedFile?;
    });
  }

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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.white70),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 270,
                            width: 200,
                            child: Image.asset(
                                'assets/images/prescription_icon.png')),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: InkWell(
                                onTap: _openCamera,
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration:
                                      const BoxDecoration(color: Colors.green),
                                  child:
                                      const Center(child: Text('Take Photos')),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: InkWell(
                                onTap: _openGallery,
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration:
                                      const BoxDecoration(color: Colors.blue),
                                  child: const Center(child: Text('Gallery')),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(232, 86, 150, 119)),
                    ),
                  ),

                  // Text Input fields
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MyTextInputWithHint(hint: 'Bird/Animal Type'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const MyTextInputWithHint(hint: 'Species'),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const MyTextInputWithHint(hint: 'Age'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const MyTextInputWithHint(hint: 'Weight'),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const MyTextInputWithHint(hint: 'Symptoms'),
                  ),
                ],
              ),
            ),
            const Center(
                child: Text('Prescription Detail')), // for Prescription Tab
          ]))
        ],
      ),
    );
  }
}
