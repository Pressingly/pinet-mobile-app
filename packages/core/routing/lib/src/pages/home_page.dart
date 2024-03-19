import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routing/src/widgets/custom_bottom_app_bar.dart';
import 'package:settings/settings.dart';
import 'package:transaction/transaction.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        TransactionHomeRoute(),
        SettingsHomeRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        return Scaffold(
          body: child,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'QR Code Scanner',
            elevation: 0,
            child: const Icon(Icons.qr_code_scanner),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.endContained,
          bottomNavigationBar: const CustomBottomAppBar(),
        );
      },
    );
  }
}
