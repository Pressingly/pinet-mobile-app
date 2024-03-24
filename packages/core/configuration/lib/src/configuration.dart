library configuration;

import 'package:common/common.dart';
import 'package:configuration/src/env/env.dev.dart';
import 'package:configuration/src/env/env.prod.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:routing/routing.dart';

enum Environment {
  dev(
    apiEndpoint: EnvDev.apiEndpoint,
  ),
  prod(
    apiEndpoint: EnvProd.apiEndpoint,
  );

  const Environment({
    required this.apiEndpoint,
  });

  factory Environment.fromFlavor(String flavor) {
    switch (flavor) {
      case 'Prod':
        return Environment.prod;
      default:
        return Environment.dev;
    }
  }

  final String apiEndpoint;
}

class AppConfiguration {
  AppConfiguration({
    required this.environment,
  });

  final Environment environment;

  Future<void> init() async {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    getIt.registerSingleton(AppRouter());
  }
}

class PinetApp extends StatelessWidget {
  const PinetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: pinetThemeData,
      darkTheme: pinetDarkThemeData,
      routerConfig: getIt<AppRouter>().config(
        navigatorObservers: () => [HeroController()],
      ),
    );
  }
}
