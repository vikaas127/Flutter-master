import 'package:flutter/material.dart';

/// The dialog to confirm sub profile image delete.
class ErrorDialog extends StatelessWidget {
  static Future<void> show(
    BuildContext context, {
    @required VoidCallback onTap,
    @required List<String> list,
  }) {
    return showDialog(
      context: context,
      builder: (_) => ErrorDialog._(
        onDelete: onTap,
        list: list,
      ),
    );
  }

  const ErrorDialog._({
    @required this.onDelete,
    Key key,
    @required this.list,
  })  : assert(onDelete != null),
        super(key: key);

  final VoidCallback onDelete;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Login unsuccessful'),
      content: Row(
        children: [
          ...list.map(
            (e) => Text(e),
          ),
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
            child: const Text("ok"),
          ),
        ),
      ],
    );
  }
}
