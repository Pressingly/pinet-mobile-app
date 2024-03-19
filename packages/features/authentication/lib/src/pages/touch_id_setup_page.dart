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
        title: const Text('Touch ID'),
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
              'Touch ID is now available! Enabling Touch ID\nwill give you faster access to your information',
              style: context.theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            Text(
              'You can turn this feature on or off at any time\nunder Settings.',
              style: context.theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                fixedSize: Size(MediaQuery.of(context).size.width - 64, 40),
              ),
              child: const Text('Enable'),
            ),
          ],
        ),
      ),
    );
  }
}
