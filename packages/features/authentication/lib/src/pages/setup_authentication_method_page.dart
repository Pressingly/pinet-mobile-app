import 'dart:io';

import 'package:authentication/src/authentication_route_module.gm.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SetupAuthenticationMethodPage extends StatelessWidget {
  const SetupAuthenticationMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              'You have successfully become a\nPINET user!',
              style: context.theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const Gap(64),
            Text(
              'Please select an authentication method\nto sign in to the app in the future',
              style: context.theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(16),
            FilledButton.icon(
              onPressed: () {
                if (Platform.isIOS) {
                  context.router.push(const FaceIDSetupRoute());
                } else {
                  context.router.push(const TouchIDSetupRoute());
                }
              },
              icon:
                  Icon(Platform.isIOS ? CustomIcons.faceId : Icons.fingerprint),
              label: Text('${Platform.isIOS ? 'Face' : 'Touch'} ID Setup'),
              style: FilledButton.styleFrom(
                fixedSize: const Size(240, 40),
              ),
            ),
            const Gap(8),
            FilledButton.icon(
              onPressed: () => context.router.push(PinCodeSetupRoute()),
              icon: const Icon(Icons.pin_outlined),
              label: const Text('PIN Code Setup'),
              style: FilledButton.styleFrom(
                fixedSize: const Size(240, 40),
              ),
            ),
            TextButton(
              onPressed: () => context.router.push(
                const PageRouteInfo('HomeRoute'),
              ),
              child: Text(
                'Setup Later',
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
