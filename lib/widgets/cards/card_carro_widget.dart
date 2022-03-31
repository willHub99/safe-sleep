// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/settings/icons.dart';
import 'package:app_tcc/widgets/buttons/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardCarroWidget extends StatelessWidget {
  const CardCarroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.primary_color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
              title: Text("Carro",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              trailing:
                  SvgPicture.asset(AppIcons.carIcon, width: 30, height: 30)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15.0),
            child: Text(
              "Modelo: Fiat",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 15.0),
            child: Text(
              "Ano: 2000",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 15.0),
            child: Text(
              "Cor: vermelha",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 15.0, bottom: 12.0),
            child: Text(
              "Placa: BRA2E2E",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          ButtonWidget(
            labelButon: 'editar',
            route: '/edit/car',
            height: 30,
          )
        ],
      ),
    );
  }
}
