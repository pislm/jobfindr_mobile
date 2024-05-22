import 'package:dio/dio.dart';
import 'package:jobfindr_mobile/data/model/get_jobs_response.dart';
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
    try {
      final params = filter.toJson();
      params['page'] = page;
      params['size'] = size;
      final response = await _dio.get(
        '/api/data',
        queryParameters: params,
      );
      return GetJobsResponse.fromJson(response.data).data;
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) return [];
      rethrow;
    }
  }
}
