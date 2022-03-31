// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/settings/icons.dart';
import 'package:app_tcc/widgets/buttons/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardEmpresaWidget extends StatelessWidget {
  const CardEmpresaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 204,
      width: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppColors.primary_color),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
              title: Text("Empresa",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              trailing: SvgPicture.asset(AppIcons.empresaIcon,
                  width: 25, height: 25)),
          ListTile(
            isThreeLine: true,
            title: Text("Transportes Lima, São Paulo",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Roboto",
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
            subtitle: Text(
                "Rua dois irmãos, 31. \nSeriviço Prestado: Motorista",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Roboto",
                    fontSize: 12,
                    fontWeight: FontWeight.w300)),
          ),
          ButtonWidget(
            labelButon: 'editar',
            route: '/edit/empresa',
            height: 30,
          )
        ],
      ),
    );
  }
}
