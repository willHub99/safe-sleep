import 'dart:async';

import 'package:app_tcc/widgets/buttons/button_form_submit_widget.dart';
import 'package:app_tcc/widgets/text_form_field/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class FormEditCarWidget extends StatefulWidget {
  const FormEditCarWidget({Key? key}) : super(key: key);

  @override
  State<FormEditCarWidget> createState() => _FormEditCarWidgetState();
}

class _FormEditCarWidgetState extends State<FormEditCarWidget> {
  final _formKey = GlobalKey<FormState>();

  late String modelo, cor, placa;
  late int ano;

  bool isError = false;

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
              hintText: 'Fiat',
              labelText: 'Modelo',
              onSaved: (value) => modelo = value!,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  setState(() {
                    isError = true;
                  });

                  return "Valor inválido";
                }
                return null;
              },
              isError: isError,
            ),
            TextFormFieldWidget(
              keyboardType: TextInputType.number,
              isFieldHidden: false,
              hintText: '2000',
              labelText: 'Ano',
              onSaved: (value) => ano = int.parse(value!),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  setState(() {
                    isError = true;
                  });

                  return "Valor inválido";
                }
                return null;
              },
              isError: isError,
            ),
            TextFormFieldWidget(
              keyboardType: TextInputType.number,
              isFieldHidden: false,
              hintText: 'verde',
              labelText: 'Cor',
              onSaved: (value) => cor = value!,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  setState(() {
                    isError = true;
                  });

                  return "Valor inválido";
                }
                return null;
              },
              isError: isError,
            ),
            TextFormFieldWidget(
              keyboardType: TextInputType.number,
              isFieldHidden: false,
              hintText: 'BRA2E19',
              labelText: 'Placa',
              onSaved: (value) => placa = value!,
              validator: (value) {
                String patern = '[A-Z]{3}[0-9][0-9A-Z][0-9]{2}';
                RegExp regExp = RegExp(patern);
                if (value == null || value.isEmpty || !regExp.hasMatch(value)) {
                  setState(() {
                    isError = true;
                  });
                  return "Placa inválido";
                }
                return null;
              },
              isError: isError,
            ),
            ButotnFormSubmitValidator(
                formKey: _formKey,
                labelButonForm: 'Editar',
                paddingBotton: 20.0,
                paddingTop: 20.0,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("modelo $modelo");
                    print("ano $ano");
                    print("cor $cor");
                    print("placa $placa");

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Atualizando dados...')),
                    );
                    Timer(const Duration(seconds: 3), () {
                      Navigator.of(context).pushNamed('/home');
                    });
                  }
                }),
          ],
        ));
  }
}
