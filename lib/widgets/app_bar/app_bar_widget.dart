// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final String nameRoute;
  const AppBarWidget({Key? key, required this.title, required this.nameRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(nameRoute);
              },
              child: Icon(Icons.west_outlined)),
          Text(title,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500)),
          SvgPicture.asset(AppIcons.logo)
        ],
      ),
    );
  }
}
