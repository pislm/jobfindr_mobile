import 'package:go_router/go_router.dart';
import 'package:jobfindr_mobile/presentation/home/home_page.dart';
import 'package:jobfindr_mobile/presentation/job_detail/job_detail_page.dart';

import '../data/model/job_model.dart';

abstract class JobFindrRouter {
  static const String home = '/';
  static String jobDetails(String id) => '/job/$id';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: jobDetails(':id'),
        builder: (context, state) => JobDetailPage(
          job: state.extra as JobModel,
        ),
      ),
    ],
  );
}
