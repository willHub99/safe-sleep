// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/settings/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app_tcc/settings/data_current.dart';

class CardIncidentesWidget extends StatelessWidget {
  const CardIncidentesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184,
      width: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.primary_color),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
              title: Text("Incidentes",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              subtitle: Text(getData(),
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
              trailing:
                  SvgPicture.asset(AppIcons.alarmIcon, width: 25, height: 25)),
          Container(
            alignment: Alignment.center,
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.white),
            child: Text("2",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 30,
                    fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}
