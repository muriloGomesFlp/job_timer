import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/modules/login/login_page_android.dart';
import 'package:job_timer/app/modules/login/login_page_ios.dart';
import 'package:job_timer/app/modules/login/login_page_macos.dart';

class LoginModuleAndroid extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPageAndroid()),
      ];
}

class LoginModuleIos extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPageIos()),
      ];
}

class LoginModuleMacOs extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginPageMacOs()),
      ];
}
