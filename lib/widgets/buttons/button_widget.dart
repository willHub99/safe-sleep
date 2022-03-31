// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String route;
  final String labelButon;
  final double height;

  const ButtonWidget({
    Key? key,
    required this.route,
    required this.labelButon,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 25.0),
      child: SizedBox(
        height: height,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              side: BorderSide(
                width: 2.0,
                color: AppColors.primary_color,
              )),
          onPressed: () {
            Navigator.of(context).pushNamed(route);
          },
          child: Text(
            labelButon,
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.primary_color,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
