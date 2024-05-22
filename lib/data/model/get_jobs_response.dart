import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_model.dart';

part 'get_jobs_response.freezed.dart';
part 'get_jobs_response.g.dart';

@freezed
class GetJobsResponse with _$GetJobsResponse {
  const GetJobsResponse._();

  factory GetJobsResponse({
    required List<JobModel> data,
  }) = _GetJobsResponse;

  factory GetJobsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetJobsResponseFromJson(json);
}
