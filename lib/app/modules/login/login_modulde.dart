import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/modules/login/controller/login_controller.dart';
import 'package:job_timer/app/modules/login/login_page_android.dart';
import 'package:job_timer/app/modules/login/login_page_ios.dart';
import 'package:job_timer/app/modules/login/login_page_macos.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class LoginModuleAndroid extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [
        BlocBind.lazySingleton((i) =>
            LoginController(authService: i())) // Authservice esta em AppModule
      ];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) =>
                LoginPageAndroid(controller: Modular.get())),
      ];
}

class LoginModuleIos extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => LoginPageIos(controller: Modular.get())),
      ];
}

class LoginModuleMacOs extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) =>
                LoginPageMacOs(controller: Modular.get())),
      ];
}
