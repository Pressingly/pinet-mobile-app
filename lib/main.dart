import 'dart:async';
import 'package:configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfiguration(
    environment: Environment.fromFlavor(appFlavor!),
  ).init();
  runApp(const PinetApp());
}
