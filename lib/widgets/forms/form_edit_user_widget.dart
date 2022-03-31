// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:app_tcc/controllers/mask_controller.dart';
import 'package:app_tcc/widgets/buttons/button_form_submit_widget.dart';
import 'package:app_tcc/widgets/text_form_field/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class FormEditUserWidget extends StatefulWidget {
  const FormEditUserWidget({Key? key}) : super(key: key);

  @override
  State<FormEditUserWidget> createState() => _FormEditUserWidgetState();
}

class _FormEditUserWidgetState extends State<FormEditUserWidget> {
  final _formKey = GlobalKey<FormState>();

  bool isError = false;

  late String nome, senha, cpf, endereco, cep, telefone;
  late int idade, numero;

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
              hintText: 'Marcos da silva',
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

                  return "Valor inválido";
                }
                return null;
              },
              isError: isError,
            ),
            TextFormFieldWidget(
              keyboardType: TextInputType.number,
              isFieldHidden: false,
              hintText: '20',
              labelText: 'Idade',
              onSaved: (value) => idade = int.parse(value!),
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
              hintText: '458.123.258-90',
              labelText: 'CPF',
              onSaved: (value) => cpf = value!,
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
              inputFormatters: [MaskController().CpfFormatter],
            ),
            TextFormFieldWidget(
              keyboardType: TextInputType.streetAddress,
              isFieldHidden: false,
              hintText: 'Rua das Camélias',
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
              hintText: '41',
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
              hintText: '85902-460',
              labelText: 'CEP',
              onSaved: (value) => cep = value!,
              validator: (value) {
                String patern = '[0-9]{5}-[0-9]{3}';
                RegExp regExp = RegExp(patern);
                if (value == null || value.isEmpty || !regExp.hasMatch(value)) {
                  setState(() {
                    isError = true;
                  });

                  return "CEP inválido";
                }
                return null;
              },
              isError: isError,
              inputFormatters: [MaskController().CepFormatter],
            ),
            TextFormFieldWidget(
              keyboardType: TextInputType.number,
              isFieldHidden: false,
              hintText: '(45) 4587-1245',
              labelText: 'Telefone',
              onSaved: (value) => telefone = value!,
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
              inputFormatters: [MaskController().phoneFormatter],
            ),
            ButotnFormSubmitValidator(
                formKey: _formKey,
                labelButonForm: 'Editar',
                paddingBotton: 20.0,
                paddingTop: 10.0,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.6,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("nome $nome");
                    print("senha $senha");
                    print("idade $idade");
                    print("cpf $cpf");
                    print("endereco $endereco");
                    print("numero $numero");
                    print("cep $cep");
                    print("telefone $telefone");
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Cadastrando Usuário...')),
                    );
                    Timer(const Duration(seconds: 3), () {
                      Navigator.of(context).pushNamed('/login');
                    });
                  }
                }),
          ],
        ));
  }
}
