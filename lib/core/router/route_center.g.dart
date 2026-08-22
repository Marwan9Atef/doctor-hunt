// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_center.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $onboardingRoute,
  $setRuleRoute,
  $loginRoute,
  $registerRoute,
  $layoutShellRoute,
];

RouteBase get $onboardingRoute => GoRouteData.$route(
  path: '/',
  name: 'onboarding',
  hasOverriddenOnExit: false,
  factory: $OnboardingRoute._fromState,
);

mixin $OnboardingRoute on GoRouteData {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $setRuleRoute => GoRouteData.$route(
  path: '/set-rule',
  name: 'set-rule',
  hasOverriddenOnExit: false,
  factory: $SetRuleRoute._fromState,
);

mixin $SetRuleRoute on GoRouteData {
  static SetRuleRoute _fromState(GoRouterState state) => const SetRuleRoute();

  @override
  String get location => GoRouteData.$location('/set-rule');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',
  name: 'login',
  hasOverriddenOnExit: false,
  factory: $LoginRoute._fromState,
);

mixin $LoginRoute on GoRouteData {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  @override
  String get location => GoRouteData.$location('/login');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerRoute => GoRouteData.$route(
  path: '/register',
  name: 'register',
  hasOverriddenOnExit: false,
  factory: $RegisterRoute._fromState,
);

mixin $RegisterRoute on GoRouteData {
  static RegisterRoute _fromState(GoRouterState state) => const RegisterRoute();

  @override
  String get location => GoRouteData.$location('/register');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $layoutShellRoute => ShellRouteData.$route(
  factory: $LayoutShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/home',
      name: 'home',
      hasOverriddenOnExit: false,
      factory: $HomeRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/fav',
      name: 'fav',
      hasOverriddenOnExit: false,
      factory: $FavRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/book',
      name: 'book',
      hasOverriddenOnExit: false,
      factory: $BookRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/communicate',
      name: 'communicate',
      hasOverriddenOnExit: false,
      factory: $CommunicateRoute._fromState,
    ),
  ],
);

extension $LayoutShellRouteExtension on LayoutShellRoute {
  static LayoutShellRoute _fromState(GoRouterState state) =>
      const LayoutShellRoute();
}

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location('/home');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $FavRoute on GoRouteData {
  static FavRoute _fromState(GoRouterState state) => const FavRoute();

  @override
  String get location => GoRouteData.$location('/fav');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $BookRoute on GoRouteData {
  static BookRoute _fromState(GoRouterState state) => const BookRoute();

  @override
  String get location => GoRouteData.$location('/book');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $CommunicateRoute on GoRouteData {
  static CommunicateRoute _fromState(GoRouterState state) =>
      const CommunicateRoute();

  @override
  String get location => GoRouteData.$location('/communicate');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
