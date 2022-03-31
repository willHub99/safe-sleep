// ignore_for_file: prefer_const_constructors
import 'package:app_tcc/pages/edit_car_page.dart';
import 'package:app_tcc/pages/edit_empresa_page.dart';
import 'package:app_tcc/pages/edit_user_page.dart';
import 'package:app_tcc/pages/home_page.dart';
import 'package:app_tcc/pages/login_page.dart';
import 'package:app_tcc/pages/register_user.dart';
import 'package:app_tcc/pages/splash_page.dart';
import 'package:app_tcc/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: const [Locale('pt', '')],
        locale: const Locale('pt', 'BR'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/tela_splash',
        routes: {
          '/tela_splash': (context) => const SplashPage(),
          '/login': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/register': (context) => RegisterUser(),
          '/edit/car': (context) => EditCarPage(),
          '/edit/empresa': (context) => EditEmpresaPage(),
          '/edit/user': (context) => EditUserPage(),
          '/user': (context) => UserPage(),
        });
  }
}
