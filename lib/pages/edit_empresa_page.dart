// ignore_for_file: prefer_const_constructors

import 'package:app_tcc/widgets/app_bar/app_bar_widget.dart';
import 'package:app_tcc/widgets/forms/form_edit_empresa_widget.dart';
import 'package:flutter/material.dart';

class EditEmpresaPage extends StatefulWidget {
  const EditEmpresaPage({Key? key}) : super(key: key);

  @override
  State<EditEmpresaPage> createState() => _EditEmpresaPageState();
}

class _EditEmpresaPageState extends State<EditEmpresaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            AppBarWidget(
              title: "Editar Empresa",
              nameRoute: '/home',
            ),
            SizedBox(
              height: 40,
            ),
            FormEditEmpresaWidget(),
          ],
        ),
      ),
    );
  }
}
