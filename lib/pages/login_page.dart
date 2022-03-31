// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, must_call_super

import 'package:app_tcc/settings/icons.dart';
import 'package:app_tcc/widgets/forms/form_login_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 30),
                  child: SvgPicture.asset(AppIcons.logoImage),
                ),
                FormLoginWidget(),
                SizedBox(
                  height: 20,
                ),
                SvgPicture.asset(AppIcons.logo, width: 25, height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
