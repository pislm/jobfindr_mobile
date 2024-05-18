// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobFilterImpl _$$JobFilterImplFromJson(Map<String, dynamic> json) =>
    _$JobFilterImpl(
      role: json['role'] as String?,
      postedAfter: json['postedAfter'] == null
          ? null
          : DateTime.parse(json['postedAfter'] as String),
      location: json['location'] as String?,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$$JobFilterImplToJson(_$JobFilterImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'postedAfter': postedAfterToJson(instance.postedAfter),
      'location': instance.location,
      'company': instance.company,
    };
