import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/features/home/screen/home_screen.dart';
import 'package:learn_flutter/features/profile/screen/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter route = GoRouter(routes: [
      GoRoute(
          path: '/',
          pageBuilder: (_, __) => const NoTransitionPage(child: HomeScreen())),
      GoRoute(
          path: '/profile',
          pageBuilder: (_, __) =>
              const NoTransitionPage(child: ProfileScreen())),
    ]);

    // return const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   initialRoute: '/',
    //   router
    //   home: Scaffold(
    //       body: SafeArea(
    //     child: Stack(
    //       children: [HomeScreen(), Navbar()],
    //     ),
    //   )),
    // );
    return MaterialApp.router(
      routerConfig: route,
    );
  }
}
