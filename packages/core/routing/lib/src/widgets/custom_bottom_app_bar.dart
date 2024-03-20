import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  late final TabsRouter tabsRouter;
  int currentActiveIndex = 0;

  @override
  void initState() {
    tabsRouter = AutoTabsRouter.of(context);
    tabsRouter.addListener(_onTabsRouterListener);
    super.initState();
  }

  @override
  void dispose() {
    tabsRouter.removeListener(_onTabsRouterListener);
    super.dispose();
  }

  void _onTabsRouterListener() {
    setState(() {
      currentActiveIndex = tabsRouter.activeIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return BottomAppBar(
      child: Row(
        children: [
          GestureDetector(
            onTap: () => tabsRouter.setActiveIndex(0),
            child: _PinetTab(
              theme: theme,
              title: 'Overview',
              iconData: Icons.attach_money,
              isExpanded: currentActiveIndex == 0,
            ),
          ),
          GestureDetector(
            onTap: () => tabsRouter.setActiveIndex(1),
            child: _PinetTab(
              theme: theme,
              title: 'Settings',
              iconData: Icons.settings,
              isExpanded: currentActiveIndex == 1,
            ),
          ),
        ],
      ),
    );
  }
}

class _PinetTab extends StatefulWidget {
  _PinetTab({
    required ThemeData theme,
    IconData? iconData,
    required String title,
    required this.isExpanded,
  })  : titleText = Text(
          title,
          style: theme.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        icon = Icon(
          iconData,
          semanticLabel: title,
          color: theme.colorScheme.onSurfaceVariant,
        );

  final Text titleText;
  final Icon icon;
  final bool isExpanded;

  @override
  _PinetTabState createState() => _PinetTabState();
}

class _PinetTabState extends State<_PinetTab>
    with SingleTickerProviderStateMixin {
  late Animation<double> _titleSizeAnimation;
  late Animation<double> _titleFadeAnimation;
  late Animation<double> _iconFadeAnimation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _titleSizeAnimation = _controller.view;
    _titleFadeAnimation = _controller.drive(CurveTween(curve: Curves.easeOut));
    _iconFadeAnimation = _controller.drive(Tween<double>(begin: 0.6, end: 1));
    if (widget.isExpanded) {
      _controller.value = 1;
    }
  }

  @override
  void didUpdateWidget(_PinetTab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 56),
      child: Row(
        children: [
          FadeTransition(
            opacity: _iconFadeAnimation,
            child: SizedBox(
              width: 48,
              child: widget.icon,
            ),
          ),
          FadeTransition(
            opacity: _titleFadeAnimation,
            child: SizeTransition(
              axis: Axis.horizontal,
              axisAlignment: -1,
              sizeFactor: _titleSizeAnimation,
              child: SizedBox(
                width: 48.0 * 1.5,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ExcludeSemantics(child: widget.titleText),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
