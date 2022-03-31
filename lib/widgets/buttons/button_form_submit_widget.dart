// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/colors.dart';
import 'package:flutter/material.dart';

class ButotnFormSubmitValidator extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String labelButonForm;
  final double paddingTop;
  final double paddingBotton;
  final double height;
  final double width;
  final void Function()? onPressed;

  const ButotnFormSubmitValidator(
      {Key? key,
      required this.formKey,
      required this.labelButonForm,
      required this.paddingTop,
      required this.paddingBotton,
      required this.height,
      required this.width,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, paddingTop, 20.0, paddingBotton),
      child: SizedBox(
        height: height,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.primary_color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
          ),
          onPressed: onPressed,
          child: Text(labelButonForm,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
