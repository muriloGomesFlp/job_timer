import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/modules/home/home_page_android.dart';

class HomeModuleAndroid extends Module {
  @override //sobrescreve a classe Bind
  List<Bind> get binds => [];

  // A rota pode ser uma página ou outro módulo
  @override //sobrescreve a classe Routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePageAndroid()),
      ];
}
