import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:transaction/src/widgets/select_period_bottom_sheet.dart';
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
            Expanded(child: _buildTransactionListPanel(context)),
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
                    context.l10n.accounts,
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
                    context.l10n.dueDate('17 Oct 2024'),
                    style: context.theme.textTheme.bodySmall?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            ActionChip(
              label: Text(context.l10n.thisMonth),
              avatar: const Icon(Icons.today),
              onPressed: () => _onSelectMonthButtonPressed(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionListPanel(BuildContext context) {
    final transactions = List.generate(3, (index) => index + 1);
    return Card.outlined(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(context.l10n.transactions),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              shrinkWrap: true,
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionListTileWidget(
                  transactionId: transactions[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onSelectMonthButtonPressed(BuildContext context) async {
    final result = await SelectPeriodBottomSheet.show(context);
    if (result != null && kDebugMode) {
      log('Select Period: $result');
    }
  }
}
