import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/src/app_router.dart';
import 'package:tms/src/apptheme.dart';

void main() {
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.sppBlue),
        useMaterial3: true,
        fontFamily: 'Kanit',
      ),
      routerConfig: appRouter,
    );
  }
}
