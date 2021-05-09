import 'package:flutter/material.dart';

import 'input_container.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({
    Key key,
    @required this.icon,
    @required this.hint,
    @required this.onChanged,
    @required this.validation,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final Function(String) onChanged;
  final String Function(String) validation;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
            icon: const Icon(Icons.mail, color: Colors.blue),
            hintText: hint,
            border: InputBorder.none),
      ),
    );
  }
}
