// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_jobs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetJobsResponseImpl _$$GetJobsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetJobsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => JobModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetJobsResponseImplToJson(
        _$GetJobsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
