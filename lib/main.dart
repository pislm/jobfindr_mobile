import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jobfindr_mobile/app.dart';
import 'package:jobfindr_mobile/data/jobfindr_repository.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  registerSingletons();
  runApp(const ProviderScope(child: JobFindrApp()));
}

void registerSingletons() {
  final dio = Dio(
    BaseOptions(
      baseUrl: dotenv.env['BASE_URL']!,
    ),
  );
  dio.interceptors.add(TalkerDioLogger());
  GetIt.I.registerSingleton(dio);

  GetIt.I.registerSingleton(JobFindrRepository(GetIt.I<Dio>()));
}
