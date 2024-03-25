import 'dart:io';

import 'package:authentication/src/authentication_route_module.gm.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

@RoutePage()
class SetupAuthenticationMethodPage extends StatelessWidget {
  const SetupAuthenticationMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BiometricType?>(
      future: Future(() async {
        final localAuth = LocalAuthentication();
        final availabelBiometrics = await localAuth.getAvailableBiometrics();
        if (availabelBiometrics.contains(BiometricType.face)) {
          return BiometricType.face;
        }
        if (availabelBiometrics.contains(BiometricType.fingerprint)) {
          return BiometricType.fingerprint;
        }
        return null;
      }),
      builder: (context, snapshot) {
        final biometricType = snapshot.data;
        return _buildScaffold(context, biometricType);
      },
    );
  }

  Scaffold _buildScaffold(BuildContext context, BiometricType? biometricType) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.securitySign.image(
              width: 110,
            ),
            const Gap(64),
            Text(
              context.l10n.biometricAuthTitle,
              style: context.theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const Gap(64),
            Text(
              context.l10n.biometricAuthFootnote,
              style: context.theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            if (biometricType != null) ...[
              const Gap(16),
              FilledButton.icon(
                onPressed: () {
                  if (Platform.isIOS) {
                    context.router.push(const FaceIDSetupRoute());
                  } else {
                    context.router.push(const TouchIDSetupRoute());
                  }
                },
                icon: Icon(
                  biometricType == BiometricType.face
                      ? CustomIcons.faceId
                      : Icons.fingerprint,
                ),
                label: Text(
                  biometricType == BiometricType.face
                      ? context.l10n.biometricFaceIDSetup
                      : context.l10n.biometricTouchIDSetup,
                ),
                style: FilledButton.styleFrom(
                  fixedSize: const Size(240, 40),
                ),
              ),
            ],
            const Gap(8),
            FilledButton.icon(
              onPressed: () => context.router.push(PinCodeSetupRoute()),
              icon: const Icon(Icons.pin_outlined),
              label: Text(context.l10n.pinCodeSetup),
              style: FilledButton.styleFrom(
                fixedSize: const Size(240, 40),
              ),
            ),
            TextButton(
              onPressed: () => context.router.replaceAll([
                const PageRouteInfo('HomeRoute'),
              ]),
              child: Text(
                context.l10n.biometricSetupLater,
                style: context.theme.textTheme.labelLarge?.copyWith(
                  decoration: TextDecoration.underline,
                  color: context.theme.colorScheme.primary,
                  height: 1.8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
