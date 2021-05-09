import 'package:flutter/material.dart';

/// The dialog to confirm sub profile image delete.
class EnterKeyName extends StatelessWidget {
  static Future<String> show(
    BuildContext context, {
    @required VoidCallback onDelete,
  }) {
    return showDialog(
      context: context,
      builder: (_) => EnterKeyName._(
        onDelete: onDelete,
      ),
    );
  }

  const EnterKeyName._({
    @required this.onDelete,
    Key key,
  })  : assert(onDelete != null),
        super(key: key);

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    String _label;
    return AlertDialog(
      title: Column(
        children: [
          const Text('Enter key Name'),
          TextField(
            controller: TextEditingController(),
            onChanged: (value) {
              _label = value;
            },
          )
        ],
      ),
      actions: <Widget>[
        ButtonTheme(
          colorScheme: Theme.of(context)
              .buttonTheme
              .colorScheme
              .copyWith(brightness: Theme.of(context).brightness),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("cancel"),
          ),
        ),
        TextButton(
          onPressed: () {
            onDelete?.call();
            Navigator.pop(context, _label);
          },
          child: Text(
            "save",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
