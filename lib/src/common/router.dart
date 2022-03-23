import 'package:FitnestX/src/screens/auth/login/index.dart';
import 'package:FitnestX/src/screens/auth/signUp/index.dart';
import 'package:FitnestX/src/screens/auth/signUp/step_2.dart';
import 'package:FitnestX/src/screens/auth/signUp/step_3.dart';
import 'package:FitnestX/src/screens/auth/welcome/index.dart';
import 'package:FitnestX/src/screens/example/index.dart';
import 'package:FitnestX/src/screens/onboarding/index.dart';
import 'package:FitnestX/src/screens/welcome/index.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final String initialLocation = '/authWelcome';

  GoRouter get getRouter => GoRouter(
        initialLocation: initialLocation,
        routes: <GoRoute>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) =>
                const WelComeScreen(),
          ),
          GoRoute(
            path: '/test',
            builder: (BuildContext context, GoRouterState state) =>
                const ExampleScreen(),
          ),
          GoRoute(
            path: '/onboarding',
            builder: (BuildContext context, GoRouterState state) =>
            const OnboardingScreen(),
          ),
          GoRoute(
            path: '/login',
            builder: (BuildContext context, GoRouterState state) =>
            const LoginScreen(),
          ),
          GoRoute(
            path: '/signUpStep1',
            builder: (BuildContext context, GoRouterState state) =>
            const SignUpScreen(),
          ),
          GoRoute(
            path: '/signUpStep2',
            builder: (BuildContext context, GoRouterState state) =>
            const SignUpStepScreen_2(),
          ),
          GoRoute(
            path: '/signUpStep3',
            builder: (BuildContext context, GoRouterState state) =>
            const SignUpStep3Screen(),
          ),
          GoRoute(
            path: '/authWelcome',
            builder: (BuildContext context, GoRouterState state) =>
            const AuthWelcomeScreen(),
          ),
        ],
      );
}
