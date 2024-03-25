import 'package:authentication/src/utils/local_auth_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TouchIDSetupPage extends StatelessWidget {
  const TouchIDSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.biometricTouchIDSetup),
        centerTitle: true,
        leading: IconButton(
          onPressed: context.router.back,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Gap(64),
            const Align(
              child: Icon(Icons.fingerprint, size: 96),
            ),
            const Gap(32),
            Text(
              context.l10n.biometricSetupTitle('Touch'),
              style: context.theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Text(
              context.l10n.biometricSetupDesc,
              style: context.theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            FilledButton(
              onPressed: () async {
                final result = await LocalAuthService.authenticateUser(
                  context,
                  context.l10n.biometricSetupTitle('Touch'),
                );
                if (result) {
                  context.router.replaceAll([
                    const PageRouteInfo('HomeRoute'),
                  ]);
                }
              },
              style: FilledButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width - 64, 40),
              ),
              child: Text(context.l10n.biometricSetupLater),
            ),
          ],
        ),
      ),
    );
  }
}
