import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/app_module.dart';
import 'package:job_timer/app/app_widget.dart';
import 'package:job_timer/firebase_options.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions
          .currentPlatform); // Inicializar Firebase antes do proprio APP

  if (kIsWeb) {
    // running on the web!
  } else if (Platform.isAndroid) {
    runApp(ModularApp(
      module: AppModuleAndroid(),
      child: const AppWidgetAndroid(),
    ));
  } else if (Platform.isIOS) {
    runApp(ModularApp(
      module: AppModuleIos(),
      child: const AppWidgetIos(),
    ));
  } else if (Platform.isMacOS) {
    runApp(ModularApp(
      module: AppModuleMacOs(),
      child: const AppWidgetMacOs(),
    ));
  }
}
