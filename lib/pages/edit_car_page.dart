// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/widgets/app_bar/app_bar_widget.dart';
import 'package:app_tcc/widgets/forms/form_edit_car_widget.dart';
import 'package:flutter/material.dart';

class EditCarPage extends StatefulWidget {
  const EditCarPage({Key? key}) : super(key: key);

  @override
  State<EditCarPage> createState() => _EditCarPageState();
}

class _EditCarPageState extends State<EditCarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            AppBarWidget(
              title: "Editar Carro",
              nameRoute: '/home',
            ),
            SizedBox(
              height: 40,
            ),
            FormEditCarWidget(),
          ],
        ),
      ),
    );
  }
}
