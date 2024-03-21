import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SelectPeriodBottomSheet extends StatelessWidget {
  const SelectPeriodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Period',
            style: context.theme.textTheme.headlineSmall?.copyWith(
              color: context.theme.colorScheme.onSurfaceVariant,
            ),
          ),
          SelectPeriodWidget(
            startFrom: DateTime.now().subtract(const Duration(days: 365)),
            onPeriodSelected: (period) {
              context.router.pop(period);
            },
          ),
        ],
      ),
    );
  }

  static Future<DateTime?> show(BuildContext context) async {
    return showModalBottomSheet<DateTime>(
      context: context,
      showDragHandle: true,
      constraints: const BoxConstraints(
        maxHeight: 360,
      ),
      builder: (context) {
        return const SelectPeriodBottomSheet();
      },
    );
  }
}

class SelectPeriodWidget extends StatefulWidget {
  const SelectPeriodWidget({
    super.key,
    required this.startFrom,
    required this.onPeriodSelected,
  });

  /// Furthest time to render
  final DateTime startFrom;
  final void Function(DateTime) onPeriodSelected;

  @override
  State<SelectPeriodWidget> createState() => _SelectPeriodWidgetState();
}

class _SelectPeriodWidgetState extends State<SelectPeriodWidget> {
  late int selectedYear;

  final _formatter = DateFormat.MMMM();
  final _now = DateTime.now();

  @override
  void initState() {
    selectedYear = _now.year;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const padding = 16.0;
    final maxCellWidth = (context.sw - padding * 4) / 3;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                '$selectedYear',
                style: context.textTheme.titleLarge?.copyWith(
                  color: context.theme.colorScheme.onSurface,
                ),
              ),
            ),
            IconButton(
              onPressed: selectedYear == _now.year ? null : _onNavigateBefore,
              icon: const Icon(Icons.navigate_before),
            ),
            IconButton(
              onPressed: selectedYear == widget.startFrom.year
                  ? null
                  : _onNavigateNext,
              icon: const Icon(Icons.navigate_next),
            ),
          ],
        ),
        GridView.count(
          padding: EdgeInsets.zero,
          primary: false,
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: maxCellWidth / 48,
          crossAxisSpacing: padding,
          mainAxisSpacing: padding / 2,
          children: List.generate(12, (i) => i + 1)
              .map(
                (e) => _buildMonthItemWidget(e, maxCellWidth),
              )
              .toList(),
        ),
      ],
    );
  }

  Widget _buildMonthItemWidget(int month, double itemWidth) {
    final isCurrentMonth = _now.month == month && _now.year == selectedYear;
    final label = isCurrentMonth
        ? 'This month'
        : _formatter.format(
            DateTime(selectedYear, month),
          );
    return ActionChip(
      backgroundColor: isCurrentMonth
          ? context.theme.colorScheme.onSurface.withOpacity(0.12)
          : null,
      label: SizedBox(
        width: itemWidth,
        child: Text(
          label,
          textAlign: TextAlign.center,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      onPressed: month > _now.month && selectedYear == _now.year
          ? null
          : () => widget.onPeriodSelected(
                DateTime(selectedYear, month),
              ),
    );
  }

  void _onNavigateBefore() {
    setState(() {
      selectedYear += 1;
    });
  }

  void _onNavigateNext() {
    setState(() {
      selectedYear -= 1;
    });
  }
}
