import 'package:dio/dio.dart';
import 'package:jobfindr_mobile/data/model/job_filter.dart';
import 'package:jobfindr_mobile/data/model/job_model.dart';

class JobFindrRepository {
  final Dio _dio;

  JobFindrRepository(this._dio);

  Future<List<JobModel>> getJobs(
    JobFilter filter, {
    int page = 1,
    int size = 20,
  }) async {
    await Future.delayed(const Duration(seconds: 2));

    // TODO: Implement API call

    final jobs = dummyJobs.map((e) => JobModel.fromJson(e)).toList();

    final startIndex = (page - 1) * size;
    final endIndex = startIndex + size;
    final validEndIndex = endIndex > jobs.length ? jobs.length : endIndex;
    if (startIndex >= jobs.length) {
      return [];
    }

    return jobs.sublist(startIndex, validEndIndex);
  }
}
