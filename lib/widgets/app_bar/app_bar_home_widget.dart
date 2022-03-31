// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarHomeWidget extends StatelessWidget {
  final String name;
  final String message;
  const AppBarHomeWidget({Key? key, required this.name, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 50, 15, 20),
      child: ListTile(
        title: Text("Olá" + name,
            style: TextStyle(
                fontSize: 24,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400)),
        subtitle: Text(message,
            style: TextStyle(
                fontSize: 14,
                fontFamily: "Roboto",
                fontWeight: FontWeight.normal)),
        trailing: SvgPicture.asset(AppIcons.logo),
      ),
    );
  }
}
