import 'package:flutter/material.dart';

class EditDialog extends StatelessWidget {
  static Future<void> show(
    BuildContext context, {
    @required VoidCallback onEdit,
  }) {
    return showDialog(
      context: context,
      builder: (_) => EditDialog._(
        onDelete: onEdit,
      ),
    );
  }

  const EditDialog._({
    @required this.onDelete,
    Key key,
  })  : assert(onDelete != null),
        super(key: key);

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure you want to edit?'),
      actions: <Widget>[
        ButtonTheme(
          colorScheme: Theme.of(context)
              .buttonTheme
              .colorScheme
              .copyWith(brightness: Theme.of(context).brightness),
          child: TextButton(
            onPressed: () {
              onDelete?.call();
              Navigator.pop(context);
            },
            child: const Text("cancel"),
          ),
        ),
        TextButton(
          onPressed: () {
            onDelete?.call();
            Navigator.pop(context);
          },
          child: Text(
            "edit",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
