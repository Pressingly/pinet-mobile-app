import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthService {
  static Future<bool> authenticateUser(
    BuildContext context,
    String title,
  ) async {
    final localAuthentication = LocalAuthentication();
    var isAuthenticated = false;
    final isBiometricSupported = await localAuthentication.isDeviceSupported();
    final canCheckBiometrics = await localAuthentication.canCheckBiometrics;

    if (isBiometricSupported && canCheckBiometrics) {
      try {
        isAuthenticated = await localAuthentication.authenticate(
          localizedReason: title,
          options: const AuthenticationOptions(
            biometricOnly: true,
            stickyAuth: true,
          ),
        );
      } on PlatformException catch (e) {
        log('Biometric Authentication Error: $e');
      }
    }
    return isAuthenticated;
  }
}
