import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:transaction/src/transaction_route_module.gm.dart';

class TransactionListTileWidget extends StatelessWidget {
  const TransactionListTileWidget({
    super.key,
    required this.transactionId,
  });

  final int transactionId;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'transaction-avatar-$transactionId',
      child: Card.filled(
        child: InkWell(
          onTap: () => context.router.push(
            TransactionDetailRoute(
              transactionId: transactionId,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 8,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: Assets.images.imageThumbnail.provider(),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Gap(8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New York Times',
                            style:
                                context.theme.textTheme.titleMedium?.copyWith(
                              color: context.theme.colorScheme.onSurface,
                            ),
                          ),
                          Text(
                            'Daily Pass',
                            style: context.theme.textTheme.labelLargeProminent
                                ?.copyWith(
                              color: context.theme.colorScheme.onSurface,
                            ),
                          ),
                          Text(
                            'Monday 11 - 08:21 AM',
                            style: context.theme.textTheme.labelSmall?.copyWith(
                              color: context.theme.colorScheme.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(8),
                    Text(
                      '\$1.09',
                      style: context.theme.textTheme.currency.copyWith(
                        fontSize: 20,
                        height: 0.8,
                      ),
                    ),
                    const Gap(10),
                    const Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
