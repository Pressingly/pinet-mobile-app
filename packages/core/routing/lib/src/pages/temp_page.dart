import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 180,
        leading: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            children: [
              Assets.icons.logo.svg(
                // ignore: deprecated_member_use
                color: context.theme.colorScheme.onBackground,
                width: 48,
                height: 48,
              ),
              const SizedBox(width: 2),
              Text(
                'United Airlines\nPINET Pass',
                style: context.textTheme.titleMedium,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2_outlined),
          ),
        ],
      ),
    );
  }
}
