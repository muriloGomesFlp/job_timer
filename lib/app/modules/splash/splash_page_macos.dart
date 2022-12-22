import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:macos_ui/macos_ui.dart';

class SplashPageMacOs extends StatefulWidget {
  const SplashPageMacOs({super.key});

  @override
  State<SplashPageMacOs> createState() => _SplashPageMacOsState();
}

class _SplashPageMacOsState extends State<SplashPageMacOs> {
  // initState, define o estado inicial da aplicação
  @override
  void initState() {
    super.initState();
    // é um listener, ou seja, caso haja alguma alteração na conta do usuário a app irá sabe e tomará algumas ações.
    // se logado vai para home senão vai para o login
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Modular.to.navigate('/login');
      } else {
        Modular.to.navigate('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      children: [
        ContentArea(
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0XFF0092B9),
                    Color(0XFF0167B2),
                  ],
                ),
              ),
              child: Center(
                child: Image.asset("assets/images/logo.png"),
              ),
            );
          },
        ),
      ],
    );
  }
}
