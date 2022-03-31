import 'dart:async';

import 'package:app_tcc/widgets/buttons/button_form_submit_widget.dart';
import 'package:app_tcc/widgets/text_form_field/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class FormEditEmpresaWidget extends StatefulWidget {
  const FormEditEmpresaWidget({Key? key}) : super(key: key);

  @override
  State<FormEditEmpresaWidget> createState() => _FormEditEmpresaWidgetState();
}

class _FormEditEmpresaWidgetState extends State<FormEditEmpresaWidget> {
  final _formKey = GlobalKey<FormState>();
  bool isError = false;

  late String nome, endereco, estado, servico;
  late int numero;

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
              hintText: 'Tranportes Lima',
              labelText: 'Nome',
              onSaved: (value) => nome = value!,
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
              hintText: 'Rua dois irmãos',
              labelText: 'Endereço',
              onSaved: (value) => endereco = value!,
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
              hintText: '31',
              labelText: 'Número',
              onSaved: (value) => numero = int.parse(value!),
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
              hintText: 'São Paulo',
              labelText: 'Estado',
              onSaved: (value) => estado = value!,
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
              hintText: 'Motorista',
              labelText: 'Serviço Prestado',
              onSaved: (value) => servico = value!,
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
                    print("nome $nome");
                    print("endereco $endereco");
                    print("estado $estado");
                    print("servico $servico");
                    print("numero $numero");

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
