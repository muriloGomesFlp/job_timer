import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'controller/login_controller.dart';

class LoginPageAndroid extends StatelessWidget {
  final LoginController controller;

  const LoginPageAndroid({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context)
        .size; // retorna o tamanho de tela de um dispositivo

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFF0092B9),
              Color(0XFF0167B2),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              // boz vazio para dar o espaçamento
              SizedBox(
                height: screenSize.height * .1,
              ), // pega o tamanho de tela e define 20% de altura em relação ao tamanho da tela
              SizedBox(
                width: screenSize.width * .8,
                height: 49,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                  ),
                  onPressed: () {
                    controller.singIn();
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/googleIcon.svg',
                            semanticsLabel: 'Google Logo'),
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                              style: TextStyle(color: Colors.black),
                              'Login with Google'),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
