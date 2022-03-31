// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/settings/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardSatusWidget extends StatelessWidget {
  const CardSatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163,
      width: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.primary_color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
              title: Text("Status",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              trailing: Icon(Icons.person, color: Colors.white)),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0),
            child: Text(
              "Situação: Ativa",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 15.0),
                child: Text("Avaliação:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, top: 6.0),
                child: SvgPicture.asset(
                  AppIcons.oneStar,
                  alignment: Alignment.bottomCenter,
                  width: 10,
                  height: 10,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
