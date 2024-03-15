library routing;

import 'package:auto_route/auto_route.dart';
import 'package:dashboard/dashboard_page.dart';

part 'routing.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: DashboardRoute.page, initial: true),
    ];
  }
}
