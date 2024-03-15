library routing;

import 'package:auto_route/auto_route.dart';
import 'package:dashboard/dashboard_route_module.dart';
import 'package:dashboard/dashboard_route_module.gm.dart';

part 'routing.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  modules: [DashboardRouteModule],
)
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
