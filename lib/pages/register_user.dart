// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, deprecated_member_use
import 'package:app_tcc/settings/icons.dart';
import 'package:app_tcc/widgets/forms/form_register_user_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:app_tcc/settings/colors.dart';
import 'package:app_tcc/widgets/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  File? _image;

  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWidget(
              title: "Cadastrar Usuário",
              nameRoute: '/login',
            ),
            Container(
              alignment: Alignment.bottomRight,
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppIcons.imageUser)),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: AppColors.text_field_color,
                  width: 2,
                ),
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(15, 15),
                  ),
                  onPressed: () {
                    _openImagePicker();
                  },
                  child: Icon(Icons.photo_camera_back, size: 30)),
            ),
            SizedBox(
              height: 40,
            ),
            FormRegisterUserWidget(),
          ],
        ),
      ),
    );
  }
}
