import 'package:authentication/authentication.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dashboard/dashboard.dart';
import 'package:settings/settings.dart';
import 'package:transaction/transaction.dart';
import 'pages/home_page.dart';

part 'routing.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
  modules: [
    DashboardRouteModule,
    AuthenticationRouteModule,
    TransactionRouteModule,
    SettingsRouteModule,
  ],
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: DashboardRoute.page, initial: true),
      AutoRoute(page: ScanQRCodeRoute.page),
      AutoRoute(page: VerifyCodeRoute.page),
      AutoRoute(page: SetupAuthenticationMethodRoute.page),
      AutoRoute(page: FaceIDSetupRoute.page),
      AutoRoute(page: TouchIDSetupRoute.page),
      AutoRoute(page: PinCodeSetupRoute.page),
      AutoRoute(
        page: HomeRoute.page,
        children: [
          AutoRoute(page: TransactionHomeRoute.page, initial: true),
          AutoRoute(page: SettingsHomeRoute.page),
        ],
      ),
    ];
  }
}
