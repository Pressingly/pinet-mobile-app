import 'package:common/common.dart';
import 'package:configuration/env/env.dev.dart';
import 'package:configuration/env/env.stg.dart';
import 'package:design/color_schemes.dart';
import 'package:design/pinet.theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:routing/routing.dart';

enum Environment {
  development(
    apiEndpoint: EnvDev.apiEndpoint,
  ),
  staging(
    apiEndpoint: EnvStg.apiEndpoint,
  );

  const Environment({
    required this.apiEndpoint,
  });

  final String apiEndpoint;

  factory Environment.fromFlavor(String flavor) {
    switch (flavor) {
      case "Staging":
        return Environment.staging;
      default:
        return Environment.development;
    }
  }
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
  const PinetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: pinetDefaultFont,
        typography: Typography.material2021(),
      ),
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
