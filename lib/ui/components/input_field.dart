import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LengthCountingTextField extends FormField<String> {
  final String initialString;

  LengthCountingTextField(
    this.initialString, {
    int maxLine,
    String label,
    int maxLength,
    FormFieldSetter<String> onSaved,
    ValueChanged<String> onChanged,
    FormFieldValidator<String> validator,
    TextInputType type = TextInputType.text,
    Key key,
  }) : super(
          key: key,
          onSaved: onSaved,
          initialValue: initialString,
          autovalidateMode: AutovalidateMode.always,
          validator: validator,
          builder: (field) {
            final state = field as _LengthCountingTextFieldState;

            void onChangedHandler(String value) {
              onChanged?.call(value);
              field.didChange(value);
            }

            return LabeledFormField(
              label: Text(label),
              note: Visibility(
                visible: maxLength != null,
                child: Text(
                  "${state._controller.text.characters.length}/$maxLength",
                  style: Theme.of(state.context)
                      .textTheme
                      .caption
                      .copyWith(color: Theme.of(state.context).hintColor),
                ),
              ),
              error:
                  (state.hasError) ? Text(state.errorText) : const SizedBox(),
              child: Builder(
                builder: (context) {
                  return TextField(
                    keyboardType: type,
                    maxLines: maxLine,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    onChanged: onChangedHandler,
                    controller: state._controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(maxLength),
                    ],
                  );
                },
              ),
            );
          },
        );

  @override
  _LengthCountingTextFieldState createState() =>
      _LengthCountingTextFieldState(initialString);
}

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

class _LengthCountingTextFieldState extends FormFieldState<String> {
  final String initialString;

  TextEditingController _controller;

  _LengthCountingTextFieldState(
    this.initialString,
  );

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: initialString);
  }

  @override
  void reset() {
    _controller = TextEditingController(text: "");
    super.reset();
  }
}

class BuildInputField extends StatelessWidget {
  final FormFieldValidator<String> validator;
  final String hintText;
  final int maxLength;
  final String label;
  final int maxLine;
  final String initialString;
  final FormFieldSetter<String> onChanged;
  final Widget icon;
  final TextInputType type;

  const BuildInputField({
    Key key,
    this.validator,
    this.hintText,
    this.maxLength,
    this.label,
    this.maxLine,
    this.initialString,
    this.onChanged,
    this.icon,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LengthCountingTextField(
      initialString,
      maxLine: maxLine,
      label: label,
      type: type,
      maxLength: maxLength,
      onSaved: onChanged,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
