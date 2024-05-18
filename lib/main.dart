import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jobfindr_mobile/app.dart';
import 'package:jobfindr_mobile/data/jobfindr_repository.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  registerSingletons();
  runApp(const ProviderScope(child: JobFindrApp()));
}

void registerSingletons() {
  GetIt.I.registerSingleton(
    Dio(
      BaseOptions(baseUrl: dotenv.env['BASE_URL']!),
    ),
  );
  GetIt.I.registerSingleton(JobFindrRepository(GetIt.I<Dio>()));
}
