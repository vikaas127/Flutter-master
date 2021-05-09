import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

/// Field of Form that shows the dialog of options to chose.
class ChoseOneFormField<T> extends FormField<T> {
  ChoseOneFormField({
    Key key,
    Widget title,
    @required List<String> options,
    @required String Function(String) labelOfValue,
    @required Widget Function(T, void Function()) builder,
    FormFieldSetter<T> onSaved,
    ValueChanged<T> onChanged,
    FormFieldValidator<T> validator,
    T initialValue,
    bool autoValidate = false,
    bool enabled = true,
  }) : super(
          key: key,
          builder: (field) {
            return builder(field.value, () async {
              final chosen = await showModal<T>(
                context: field.context,
                configuration: const FadeScaleTransitionConfiguration(),
                builder: (context) {
                  return SimpleDialog(
                    title: title ?? const Text("Choose warehouse"),
                    children: options
                        .map(
                          (value) => SimpleDialogOption(
                            onPressed: () {
                              Navigator.of(context).pop(value);
                            },
                            child: Text(labelOfValue(value)),
                          ),
                        )
                        .toList(),
                  );
                },
              );
              if (chosen != null) {
                field.didChange(chosen);
                onChanged?.call(chosen);
              }
            });
          },
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          autovalidateMode: autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          enabled: enabled,
        );
}

class BuildOneChooser extends StatelessWidget {
  final String label;
  final List<String> options;
  final Function(String) value;
  final String chooseTitle;
  final String initialValue;

  const BuildOneChooser({
    Key key,
    this.label,
    this.initialValue,
    this.value,
    this.chooseTitle,
    @required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: LabeledFormField(
        label: Text(
          label,
          style: Theme.of(context).textTheme.caption,
        ),
        child: ChoseOneFormField<String>(
          title: Text(chooseTitle),
          options: options,
          initialValue: initialValue,
          labelOfValue: (v) => v,
          builder: (value, handler) {
            return ButtonLikeTextField(
              onPressed: handler,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      value ?? "Please choose one",
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            height: 1,
                          ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down),
                ],
              ),
            );
          },
          onChanged: value,
        ),
      ),
    );
  }
}

///Dropdown input field used for user input
class LabeledFormField extends StatelessWidget {
  final Widget child;
  final Widget label;
  final Widget note;
  final Widget error;

  const LabeledFormField({
    @required this.child,
    @required this.label,
    this.note = const SizedBox(),
    this.error = const SizedBox(),
  })  : assert(child != null),
        assert(label != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            label,
            note,
          ],
        ),
        const SizedBox(height: 4),
        child,
        DefaultTextStyle.merge(
          style: Theme.of(context)
              .textTheme
              .caption
              .copyWith(color: Theme.of(context).errorColor),
          child: error,
        ),
      ],
    );
  }
}

class ButtonLikeTextField extends StatelessWidget {
  const ButtonLikeTextField({
    Key key,
    @required this.onPressed,
    @required this.child,
  }) : super(key: key);

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}
