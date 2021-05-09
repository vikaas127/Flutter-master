import 'package:flutter/material.dart';

/// The dialog to confirm sub profile image delete.
class DeleteDialog extends StatelessWidget {
  static Future<void> show(
    BuildContext context, {
    @required VoidCallback onDelete,
  }) {
    return showDialog(
      context: context,
      builder: (_) => DeleteDialog._(
        onDelete: onDelete,
      ),
    );
  }

  const DeleteDialog._({
    @required this.onDelete,
    Key key,
  })  : assert(onDelete != null),
        super(key: key);

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure you want to delete?'),
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
            Navigator.pop(context);
          },
          child: Text(
            "delete",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
