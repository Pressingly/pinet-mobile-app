import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;

  late Widget _currentWidget;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    _currentWidget = _buildSplashLogoWidget();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: _currentWidget,
        ),
      ),
    );
  }

  Widget _buildSplashLogoWidget() {
    return Assets.anims.logo.lottie(
      controller: _animationController,
      onLoaded: (composition) {
        _animationController
          ..duration = composition.duration
          ..forward().whenComplete(() {
            setState(() {
              _currentWidget = _buildDashboardContent(context);
            });
          });
      },
      width: 128,
      height: 128,
      repeat: true,
    );
  }

  Widget _buildDashboardContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.images.qrCodeIllustration.image(
          width: 284,
          height: 244,
        ),
        const Gap(64),
        Text(
          'Simplify  your digital  consumption',
          style: context.textTheme.bodyLargeProminent,
        ),
        const Gap(12),
        Text(
          'PINET makes your digital consumption more\nconvenient and accessible',
          style: context.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const Gap(24),
        FilledButton(
          style: FilledButton.styleFrom(),
          onPressed: () {
            context.router.push(
              const PageRouteInfo('ScanQRCodeRoute'),
            );
          },
          child: Text(
            "I'm ready to begin",
            style: context.textTheme.labelLarge?.copyWith(
              color: context.theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
