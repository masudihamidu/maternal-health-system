import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maternal_health_system/screens/ClinicCard.dart';
import 'package:maternal_health_system/screens/ForgotPassword.dart';
import 'package:maternal_health_system/screens/Login.dart';
import 'package:maternal_health_system/screens/MaternalHomePage.dart';
import 'package:maternal_health_system/screens/QuestionAnswers.dart';

void main() {
  runApp(const MyApp());
}

final _routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginForm(),
    ),
    GoRoute(
      path: '/ForgotPassword',
      builder: (context, state) => const ForgotPassword(),
    ),
    GoRoute(
      path: '/MaternalPage',
      builder: (context, state) => const MaternalhomePage(),
    ),
    GoRoute(
      path: '/ClinicCard',
      builder: (context, state) => const ClinicCard(),
    ),
    GoRoute(
      path: '/QuestionAnswers',
      builder: (context, state) => const Questions(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Maternal Health System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      routerConfig: _routerConfig,
    );
  }
}
