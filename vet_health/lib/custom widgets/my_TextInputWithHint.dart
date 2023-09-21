import 'package:flutter/material.dart';

class MyTextInputWithHint extends StatefulWidget {
  final String hint;

  const MyTextInputWithHint({super.key, required this.hint});

  @override
  _MyTextInputWithHintState createState() => _MyTextInputWithHintState();
}

class _MyTextInputWithHintState extends State<MyTextInputWithHint> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_isFocused || _controller.text.isNotEmpty)
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.only(left: 8.0, top: 5.0),
            child: Text(
              widget.hint,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
        TextFormField(
          controller: _controller,
          focusNode: _focusNode,
          decoration: InputDecoration(
            hintText: widget.hint,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30), right: Radius.circular(30))),
            contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            hintStyle: const TextStyle(
              fontSize: 16.0, 
              fontWeight: FontWeight.normal,
              color: Colors.grey, 
            ),
          ),
          textAlign: TextAlign.start,
          onTap: () {
            setState(() {
              _isFocused = true;
            });
          },
          onChanged: (value) {
            if (value.isEmpty) {
              setState(() {
                _isFocused = true;
              });
            }
          },
          onFieldSubmitted: (value) {
            setState(() {
              _isFocused = false;
            });
          },
          onEditingComplete: () {
            setState(() {
              _isFocused = false;
            });
          },
        ),
      ],
    );
  }
}
