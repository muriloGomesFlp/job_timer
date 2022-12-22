import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/modules/home/home_module.dart';
import 'package:job_timer/app/modules/login/login_modulde.dart';
import 'package:job_timer/app/modules/splash/splash_page_android.dart';
import 'package:job_timer/app/modules/splash/splash_page_ios.dart';
import 'package:job_timer/app/modules/splash/splash_page_macos.dart';

//Gerencia todos os modulos do aplicação

class AppModuleAndroid extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) =>
                const SplashPageAndroid()), // add uma página
        ModuleRoute(
          '/login',
          module: LoginModuleAndroid(),
        ),
        ModuleRoute(
          '/home',
          module: HomeModuleAndroid(),
        ),
      ];
}

class AppModuleIos extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPageIos()),
        ModuleRoute(
          '/login',
          module: LoginModuleIos(),
        ),
        ModuleRoute(
          '/home',
          module: HomeModuleAndroid(),
        ),
      ];
}

class AppModuleMacOs extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPageMacOs()),
        ModuleRoute(
          '/login',
          module: LoginModuleMacOs(),
        ),
        ModuleRoute(
          '/home',
          module: HomeModuleAndroid(),
        ),
      ];
}
