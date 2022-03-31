// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/settings/data_current.dart';
import 'package:app_tcc/settings/images.dart';
import 'package:app_tcc/widgets/cards/card_incidente_widget.dart';
import 'package:app_tcc/widgets/cards/card_info_widget.dart';
import 'package:app_tcc/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
                width: 150,
                height: 150,
                child: ClipOval(
                    child: Image.asset(
                  AppImages.pessoa_dormindo,
                  fit: BoxFit.contain,
                ))),
            Text("José Almeida",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 30,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 40,
            ),
            CardInfoWidget(),
            SizedBox(
              height: 20,
            ),
            ListTile(
                title: Text("Último Incidentes",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
                subtitle: Text(getData(),
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w600))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [CardIncidentWidget(), CardIncidentWidget()],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
              child: MenuWidget(
                  color1: AppColors.primary_color, color2: Colors.black),
            ),
          ]),
        ),
      ),
    );
  }
}
