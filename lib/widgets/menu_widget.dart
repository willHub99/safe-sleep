// ignore_for_file: prefer_const_constructors
import 'package:app_tcc/settings/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuWidget extends StatelessWidget {
  final Color? color1;
  final Color? color2;
  const MenuWidget({Key? key, this.color1, this.color2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/user');
            },
            child: SvgPicture.asset(AppIcons.userIcon,
                width: 25.0, height: 25.0, color: color1)),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
            child: SvgPicture.asset(AppIcons.homeIcon,
                width: 25.0, height: 25.0, color: color2)),
      ],
    );
  }
}
