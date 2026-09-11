import 'package:doctor_hunt/feature/shared/auth/presentation/screens/login_screen.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/screens/register_screen.dart';
import 'package:doctor_hunt/feature/shared/auth/presentation/screens/set_role_screen.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/screens/doctor_details_screen.dart';
import 'package:doctor_hunt/feature/Patient/book/presentation/screens/patient_book_screen.dart';
import 'package:doctor_hunt/feature/Patient/communicate/presentation/screens/patient_communication_screen.dart';
import 'package:doctor_hunt/feature/Patient/fav/presentation/screens/patient_fav_screen.dart';
import 'package:doctor_hunt/feature/Patient/home/presentation/screens/patient_home_screen.dart';
import 'package:doctor_hunt/feature/shared/layout/presentation/screens/layout_screen.dart';
import 'package:doctor_hunt/feature/shared/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'route_center.g.dart';

@TypedGoRoute<OnboardingRoute>(path: '/', name: 'onboarding')
class OnboardingRoute extends GoRouteData with $OnboardingRoute {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingScreen();
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const OnboardingScreen(),
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

@TypedGoRoute<SetRuleRoute>(path: '/set-rule', name: 'set-rule')
class SetRuleRoute extends GoRouteData with $SetRuleRoute {
  const SetRuleRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SetRoleScreen();
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const SetRoleScreen(),
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

@TypedGoRoute<LoginRoute>(path: '/login', name: 'login')
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const LoginScreen(),
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

@TypedGoRoute<RegisterRoute>(path: '/register', name: 'register')
class RegisterRoute extends GoRouteData with $RegisterRoute {
  const RegisterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterScreen();
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const RegisterScreen(),
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

@TypedGoRoute<DoctorDetailsRoute>(
  path: '/doctor-details',
  name: 'doctor-details',
)
class DoctorDetailsRoute extends GoRouteData with $DoctorDetailsRoute {
  const DoctorDetailsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DoctorDetailsScreen();
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: const DoctorDetailsScreen(),
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

@TypedShellRoute<LayoutShellRoute>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<PatientHomeRoute>(path: '/home', name: 'home'),
    TypedGoRoute<PatientFavRoute>(path: '/fav', name: 'fav'),
    TypedGoRoute<PatientBookRoute>(path: '/book', name: 'book'),
    TypedGoRoute<PatientCommunicateRoute>(
      path: '/communicate',
      name: 'communicate',
    ),
  ],
)
class LayoutShellRoute extends ShellRouteData {
  const LayoutShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return LayoutScreen(child: navigator);
  }
}

class PatientHomeRoute extends GoRouteData with $PatientHomeRoute {
  const PatientHomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PatientHomeScreen();
  }
}

class PatientFavRoute extends GoRouteData with $PatientFavRoute {
  const PatientFavRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PatientFavScreen();
  }
}

class PatientBookRoute extends GoRouteData with $PatientBookRoute {
  const PatientBookRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PatientBookScreen();
  }
}

class PatientCommunicateRoute extends GoRouteData
    with $PatientCommunicateRoute {
  const PatientCommunicateRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PatientCommunicationScreen();
  }
}
