import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:transaction/src/widgets/transaction_list_tile_widget.dart';

@RoutePage()
class TransactionHomePage extends StatelessWidget {
  const TransactionHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildGeneralInfosPanel(context),
            const Gap(16),
            Expanded(child: _buildTransactionListPanel()),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
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
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2_outlined),
          ),
        ),
      ],
    );
  }

  Card _buildGeneralInfosPanel(BuildContext context) {
    return Card.filled(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Accounts',
                    style: context.theme.textTheme.titleSmall?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(16),
                  Text(
                    '\$12,132.49',
                    style: context.theme.textTheme.currency.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(8),
                  Text(
                    'Due date: 17 Oct 2024',
                    style: context.theme.textTheme.bodySmall?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            ActionChip(
              label: const Text('This month'),
              avatar: const Icon(Icons.today),
              onPressed: () => _onSelectMonthButtonPressed(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionListPanel() {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Transactions'),
            ),
            const Gap(16),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: List.filled(3, 0, growable: true).length,
                itemBuilder: (context, index) {
                  return const TransactionListTileWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onSelectMonthButtonPressed(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      showDragHandle: true,
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      builder: (context) {
        return Container();
      },
    );
  }
}
