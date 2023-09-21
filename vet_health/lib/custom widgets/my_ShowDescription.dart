import 'package:flutter/material.dart';

class MyShowDescription extends StatelessWidget {
  const MyShowDescription({super.key, required this.paragraph});

  final List<Widget> paragraph;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Description'),
        ),
        body: ListView.builder(
          itemCount: paragraph.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: paragraph[index],
            );
          },
        ));
  }
}
