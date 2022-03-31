// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_tcc/settings/data_current.dart';

class MenuBarGraphic extends StatelessWidget {
  const MenuBarGraphic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(alignment: Alignment.center, children: [
        SvgPicture.asset(AppIcons.calendarIcon, width: 40, height: 40),
        Positioned(
          top: 14.0,
          child: Text(
            getDay(),
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        )
      ]),
      title: Text("Últimos Incidentes",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Roboto",
              fontSize: 16,
              fontWeight: FontWeight.w600)),
    );
  }
}
