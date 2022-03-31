// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/widgets/app_bar/app_bar_home_widget.dart';
import 'package:app_tcc/widgets/cards/card_carro_widget.dart';
import 'package:app_tcc/widgets/cards/card_empresa_widget.dart';
import 'package:app_tcc/widgets/cards/card_incidentes_widget.dart';
import 'package:app_tcc/widgets/cards/card_status_widget.dart';
import 'package:app_tcc/widgets/graphic/graphic_widget.dart';
import 'package:app_tcc/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarHomeWidget(
              message: "Seja bem vindo ao Safe Sleep",
              name: "José",
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Column(
                children: [
                  CardEmpresaWidget(),
                  SizedBox(
                    height: 10.0,
                  ),
                  CardIncidentesWidget()
                ],
              ),
              Column(
                children: [
                  CardSatusWidget(),
                  SizedBox(
                    height: 10.0,
                  ),
                  CardCarroWidget()
                ],
              )
            ]),
            BarChartSample1(),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: MenuWidget(
                  color1: Colors.black, color2: AppColors.primary_color),
            )
          ],
        ),
      ),
    );
  }
}
