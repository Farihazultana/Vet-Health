import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vet_health/my_carouselSlider.dart';

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
      
      appBar: AppBar(
        
        leading: const Icon(Icons.menu, color: Colors.white,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.refresh_rounded, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.flag_circle, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.flag_circle, color: Colors.white,)),
        ],
        backgroundColor: const Color.fromARGB(255, 39, 34, 85),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCarouselSlider(),
            ),
            const Center(
              child: Text('Product Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),),
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
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Image.asset('assets/images/Icon_Product_Details_001.png', width: 50, height: 50,),
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100, 
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Image.asset('assets/images/Icon_Product_Details_002.png', width: 50, height: 50,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100, 
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0
                        ), 
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Image.asset('assets/images/Icon_Product_Details_003.png', width: 50, height: 50,),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text('Farm & Disease Management', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),),
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
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Image.asset('assets/images/Icon_Disease_&_Treatment_001.png', width: 50, height: 50,),
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100, 
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0
                        ),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Image.asset('assets/images/Icon_Disease_&_Treatment_002.png', width: 50, height: 50,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100, 
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0
                        ), 
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Image.asset('assets/images/Icon_Disease_&_Treatment_003.png', width: 50, height: 50,),
                    ),
                  ),
                ],
              ),
            ),
            const Center(child: Text('Prescription',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),),), 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width-25,
                height: 100, 
                decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0
                          ), 
                          borderRadius: BorderRadius.circular(5)
                        ),
                child: Icon(Icons.note_add, color: Colors.blue.shade900,),
              ),
            ),
            
          ],
        ),
      ),
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