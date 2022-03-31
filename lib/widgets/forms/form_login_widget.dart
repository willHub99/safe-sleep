import 'dart:async';

import 'package:app_tcc/widgets/buttons/button_form_submit_widget.dart';
import 'package:app_tcc/widgets/buttons/button_widget.dart';
import 'package:app_tcc/widgets/text_form_field/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class FormLoginWidget extends StatefulWidget {
  const FormLoginWidget({Key? key}) : super(key: key);

  @override
  State<FormLoginWidget> createState() => _FormLoginWidgetState();
}

class _FormLoginWidgetState extends State<FormLoginWidget> {
  final _formKey = GlobalKey<FormState>();
  bool isError = false;

  late String email, senha;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextFormFieldWidget(
              keyboardType: TextInputType.text,
              isFieldHidden: false,
              hintText: 'Marcos@gmail.com.br',
              labelText: 'Email',
              onSaved: (value) => email = value!,
              validator: (value) {
                String patern = '[A-Za-z0-9]+@[a-z]+\.[a-z]{3}(\.[a-z]{3})?';
                RegExp regExp = RegExp(patern);
                if (value == null || value.isEmpty) {
                  setState(() {
                    isError = true;
                  });

                  return "Por favor insira um valor válido para o campo nome";
                } else if (!regExp.hasMatch(value)) {
                  return "Email Inválido";
                }
                return null;
              },
              isError: isError,
            ),
            TextFormFieldWidget(
              keyboardType: TextInputType.text,
              isFieldHidden: true,
              hintText: '',
              labelText: 'Senha',
              onSaved: (value) => senha = value!,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  setState(() {
                    isError = true;
                  });

                  return "Por favor insira um valor válido para o campo senha";
                }
                return null;
              },
              isError: isError,
            ),
            ButotnFormSubmitValidator(
              formKey: _formKey,
              labelButonForm: 'Entrar',
              paddingBotton: 10.0,
              paddingTop: 10.0,
              height: 45,
              width: MediaQuery.of(context).size.width * 0.9,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  print("email $email");
                  print("senha $senha");
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Autenticando Usuário...')),
                  );

                  Timer(const Duration(seconds: 3), () {
                    Navigator.of(context).pushNamed('/home');
                  });
                }
              },
            ),
            // ignore: prefer_const_constructors
            ButtonWidget(
              labelButon: 'Cadastrar',
              route: '/register',
              height: 45.0,
            ),
          ],
        ));
  }
}
