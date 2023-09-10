import 'package:flutter/material.dart';

class MyIconTextButton extends StatelessWidget {
  const MyIconTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width-20,
      height: 50,
      child: ElevatedButton.icon(
        
        onPressed: () {},
        icon: const Icon(
          Icons.login,
          size: 30,
          color: Colors.white,
        ),
        label: const Text(
          'Submit',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 33, 17, 105))
        ),
      ),
    );
  }
}
