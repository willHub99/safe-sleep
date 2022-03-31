// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/widgets/buttons/button_widget.dart';
import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 270,
      decoration: BoxDecoration(
          color: AppColors.primary_color,
          borderRadius: BorderRadius.circular(20)),
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
            title: Text("Status: Ativo",
                style: TextStyle(
                    fontFamily: "Roboto", fontSize: 24, color: Colors.white))),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 2),
          child: Text("Nome: José Almeida",
              style: TextStyle(
                  fontFamily: "Roboto", fontSize: 18, color: Colors.white)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 2),
          child: Text("Idade: 34",
              style: TextStyle(
                  fontFamily: "Roboto", fontSize: 18, color: Colors.white)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 2),
          child: Text("Endereço: Rua dois irmãos, 321",
              style: TextStyle(
                  fontFamily: "Roboto", fontSize: 18, color: Colors.white)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 2),
          child: Text("CEP: 85234-567",
              style: TextStyle(
                  fontFamily: "Roboto", fontSize: 18, color: Colors.white)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 20),
          child: Text("Telefone: (45) 9 9876-6543",
              style: TextStyle(
                  fontFamily: "Roboto", fontSize: 18, color: Colors.white)),
        ),
        ButtonWidget(
          height: 40,
          labelButon: 'Editar',
          route: '/edit/user',
        )
      ]),
    );
  }
}
