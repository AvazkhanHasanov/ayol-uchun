import 'package:ayol_uchun/core/routing/routes.dart';
import 'package:ayol_uchun/features/auth/pages/login_page.dart';
import 'package:ayol_uchun/features/home/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(path: Routes.home, builder: (context, state) => HomePage()),
    GoRoute(path: Routes.login, builder: (context, state) => LoginPage()),
  ],
);
