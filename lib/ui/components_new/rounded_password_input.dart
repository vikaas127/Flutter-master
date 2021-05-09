import 'package:flutter/material.dart';

import 'input_container.dart';

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput(
      {Key key,
      @required this.hint,
      @required this.onChanged,
      @required this.validation})
      : super(key: key);

  final String hint;
  final Function(String) onChanged;
  final String Function(String) validation;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextFormField(
      validator: validation,
      onChanged: onChanged,
      cursorColor: Colors.blue,
      obscureText: true,
      decoration: InputDecoration(
          icon: const Icon(Icons.lock, color: Colors.blue),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
