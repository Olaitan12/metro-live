// // ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  TextEditingController textEditingController;
  Widget? prefixIcon;
  final bool custom;
  TextInputType keyboardType;

  CustomTextField(
      {required this.label,
      required this.textEditingController,
      this.prefixIcon,
      this.custom = false,
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      autofocus: false,
      controller: textEditingController,
      validator: (String? value) {
        if (value!.isEmpty) {
          return '$label is required';
        }
        return null;
      },
      decoration: custom
          ? InputDecoration(
              counterText: '',
              filled: true,
              prefixIcon: prefixIcon,
              contentPadding: const EdgeInsets.all(5),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context)
                      .textTheme
                      .headline3!
                      .color!
                      .withOpacity(0.1),
                  width: 1.0,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    5,
                  ),
                ),
              ),
              labelText: label,
              labelStyle: TextStyle(
                color: Theme.of(context).textTheme.headline1!.color,
              ),
              fillColor: Theme.of(context)
                  .textTheme
                  .headline3!
                  .color!
                  .withOpacity(0.1),
            )
          : InputDecoration(
              filled: true,
              prefixIcon: prefixIcon,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              labelText: label,
              labelStyle: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
              fillColor: Theme.of(context).canvasColor,
            ),
    );
  }
}
