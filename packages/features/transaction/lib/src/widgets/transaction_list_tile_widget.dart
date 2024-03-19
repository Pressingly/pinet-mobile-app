import 'package:design/design.dart';
import 'package:flutter/material.dart';

class TransactionListTileWidget extends StatelessWidget {
  const TransactionListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: context.theme.colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New York Times',
                        style: context.theme.textTheme.titleMedium?.copyWith(
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
              ),
            ],
          ),
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }
}
