import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
            hintText: 'Search by product name...',
            filled: true,
            fillColor: Colors.white,
            suffixIcon: _textEditingController.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _textEditingController.clear();
                    },
                  )
                : const Icon(Icons.clear),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              //   borderSide: const BorderSide(
              //     color: Colors.blue,
              //   ),
              // ),
              // enabledBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              //   borderSide: const BorderSide(
              //     color: Colors.blue,
              //   ),
              
            )),
      ),
    );
  }
}
