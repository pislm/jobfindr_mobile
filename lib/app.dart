import 'package:flutter/material.dart';
import 'core/router.dart';

class JobFindrApp extends StatelessWidget {
  const JobFindrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'JobFindr',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: JobFindrRouter.router,
    );
  }
}
