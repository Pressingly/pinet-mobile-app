import 'package:authentication/src/utils/local_auth_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FaceIDSetupPage extends StatelessWidget {
  const FaceIDSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.biometricFaceIDSetup),
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
              child: Icon(CustomIcons.faceId, size: 96),
            ),
            const Gap(32),
            Text(
              l10n.biometricSetupTitle('Face'),
              style: context.theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Text(
              l10n.biometricSetupDesc,
              style: context.theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            FilledButton(
              onPressed: () async {
                final result = await LocalAuthService.authenticateUser(
                  context,
                  context.l10n.biometricSetupTitle('Face'),
                );
                if (result) {
                  context.router.replaceAll([
                    const PageRouteInfo('HomeRoute'),
                  ]);
                }
              },
              style: FilledButton.styleFrom(
                fixedSize: Size(context.sw - 64, 40),
              ),
              child: Text(l10n.enable),
            ),
          ],
        ),
      ),
    );
  }
}
