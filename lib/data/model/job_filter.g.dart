// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobFilterImpl _$$JobFilterImplFromJson(Map<String, dynamic> json) =>
    _$JobFilterImpl(
      position: (json['position'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
      pubDate: json['pubDate'] == null
          ? null
          : DateTime.parse(json['pubDate'] as String),
      location: json['location'] as String?,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$$JobFilterImplToJson(_$JobFilterImpl instance) =>
    <String, dynamic>{
      'position': positionToJson(instance.position),
      'pubDate': postedAfterToJson(instance.pubDate),
      'location': instance.location,
      'company': instance.company,
    };
