// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/settings/images.dart';
import 'package:flutter/material.dart';

class CardIncidentWidget extends StatelessWidget {
  const CardIncidentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 152,
      decoration: BoxDecoration(
          color: AppColors.primary_color,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                  width: 180,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: Image.asset(AppImages.pessoa_dormindo).image),
                  ))),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "21/03/2020",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Roboto", fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text("Duração: 12 segundo",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Roboto", fontSize: 12)),
          ),
        ],
      ),
    );
  }
}
