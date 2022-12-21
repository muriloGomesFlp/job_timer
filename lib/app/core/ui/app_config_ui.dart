import 'package:flutter/material.dart';

class AppConfigUI {
  // proibir que seja instanciada esta classe, pois possui somente metodos staticos
  AppConfigUI._();
  // Usado o site https://maketintsandshades.com/ para gerar a paleta de cores com base na cor primaria para configurar o mapa
  // de cores, exemplo abaixo:
  static const MaterialColor _primarySwatch = MaterialColor(0XFF0066B0, {
    50: Color(0XFF005c9e), // 10%
    100: Color(0XFF00528d), //20%
    200: Color(0XFF00477b),
    300: Color(0XFF003d6a),
    400: Color(0XFF003358),
    500: Color(0XFF002946),
    600: Color(0XFF001f35),
    700: Color(0XFF001423),
    800: Color(0XFF000a12),
    900: Color(0XFF000000), //90%
  });

  static final ThemeData theme = ThemeData(
      primarySwatch: _primarySwatch, // aplicado o mapa de cores
      // Color: OXFF+HexCode
      primaryColor: const Color(0XFF0066B0),
      primaryColorLight: const Color(0XFF219FFF),
      // Estilização dos inputs Text form
      inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          labelStyle: TextStyle(color: Colors.black)),
      // Estilização do Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ));
}
