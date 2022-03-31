// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unnecessary_const

import 'package:app_tcc/settings/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatelessWidget {
  final bool isFieldHidden;
  final bool isError;
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String?)? onSaved;

  const TextFormFieldWidget(
      {Key? key,
      required this.isFieldHidden,
      required this.labelText,
      required this.hintText,
      required this.validator,
      required this.isError,
      this.keyboardType,
      this.inputFormatters,
      this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Scaffold(
          body: TextFormField(
            inputFormatters: inputFormatters,
            obscureText: isFieldHidden,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              isDense: true,
              errorStyle: TextStyle(fontSize: 0.0, color: Colors.red),
              labelStyle: TextStyle(
                  color: isError ? Colors.black : AppColors.primary_color),
              labelText: labelText,
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: isError ? Colors.black : AppColors.primary_color),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: isError
                        ? Colors.black
                        : AppColors.background_splash_color),
                borderRadius: BorderRadius.circular(50),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.red),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.red),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            validator: validator,
            onSaved: onSaved,
          ),
        ),
      ),
    );
  }
}
