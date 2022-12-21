import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart';
import 'package:job_timer/app/core/ui/app_config_ui.dart';

class AppWidgetAndroid extends StatelessWidget {
  const AppWidgetAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Job Timer",
      builder: Asuka.builder,
      theme: AppConfigUI.theme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: "Job Timer",
      builder: Asuka.builder,
      //theme: AppConfigUI.theme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}