import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

@RoutePage()
class TransactionDetailPage extends StatelessWidget {
  const TransactionDetailPage({super.key, required this.transactionId});

  final int transactionId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Details'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.router.back(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTransactionInfoCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionInfoCard(BuildContext context) {
    final theme = context.theme;
    return Hero(
      tag: 'transaction-avatar-$transactionId',
      transitionOnUserGestures: true,
      child: OverflowBox(
        maxWidth: double.infinity,
        maxHeight: double.infinity,
        fit: OverflowBoxFit.deferToChild,
        child: Card.filled(
          color: theme.colorScheme.primary,
          child: Container(
            constraints: BoxConstraints(
              minWidth: context.sw - 32,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      const Gap(16),
                      Text(
                        'Daily Pass',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                      const Gap(8),
                      _buildTitleLabel(theme, 'Publisher'),
                      const Gap(2),
                      _buildContentLabel(theme, 'New York Times'),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTitleLabel(theme, 'Transaction Date'),
                                const Gap(2),
                                _buildContentLabel(
                                  theme,
                                  '11/02/2924 - 08:21 AM',
                                ),
                              ],
                            ),
                            const Gap(32),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTitleLabel(theme, 'Status'),
                                const Gap(2),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.surface,
                                    border: Border.all(
                                      color: theme.colorScheme.outline,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    'Success',
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(8),
                      _buildTitleLabel(theme, 'Description'),
                      const Gap(2),
                      _buildContentLabel(
                        theme,
                        "NYT - You've subscribed to the Daily package ",
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.tertiaryContainer,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.scrim.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      '\$1.09',
                      style: theme.textTheme.currency.copyWith(
                        color: theme.colorScheme.onTertiaryContainer,
                        fontSize: 24,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleLabel(ThemeData theme, String title) => Text(
        title,
        style: theme.textTheme.labelMedium?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
      );

  Widget _buildContentLabel(ThemeData theme, String content) => Text(
        content,
        style: theme.textTheme.labelLargeProminent?.copyWith(
          color: theme.colorScheme.onPrimary,
          fontWeight: FontWeight.w600,
        ),
      );
}
