import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../screens/login/UI/login_screen.dart';
import '../../screens/splash/UI/splash_screen.dart';
import 'app_route_observer.dart';

part 'app_route_provider.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

@riverpod
Uri currentRoute(ref) {
  return ref
      .watch(routeInformationProvider)
      .imgValue
      .uri;
}

final routeInformationProvider = ChangeNotifierProvider<GoRouteInformationProvider>((ref) {
  final router = ref.watch(routerProvider);
  return router.routeInformationProvider;
});

final routerProvider = Provider<GoRouter>(
      (ref) =>
      GoRouter(
        observers: [AppRouteObserver(ref)],
        navigatorKey: _rootNavigatorKey,
        initialLocation: LoginScreen.routePath,
        routes: [
          GoRoute(
            path: SplashScreen.routePath,
            name: SplashScreen.routeName,
            builder: (context, state) => const SplashScreen(),
          ),
          GoRoute(
            path: LoginScreen.routePath,
            name: LoginScreen.routeName,
            builder: (context, state) => const LoginScreen(),
            routes: [
            ],
          ),
        ],
      ),
);