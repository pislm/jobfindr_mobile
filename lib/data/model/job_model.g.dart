// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobModelImpl _$$JobModelImplFromJson(Map<String, dynamic> json) =>
    _$JobModelImpl(
      title: json['title'] as String,
      publicationDate:
          dateFromJson(json['publicationDate'] as Map<String, dynamic>),
      location: json['location'] as String,
      company: json['company'] as String,
      sourceSite: json['sourceSite'] as String,
      linkDetail: json['linkDetail'] as String,
      logoImgLink: json['logoImgLink'] as String,
      position: json['position'] as String,
    );

Map<String, dynamic> _$$JobModelImplToJson(_$JobModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'publicationDate': instance.publicationDate.toIso8601String(),
      'location': instance.location,
      'company': instance.company,
      'sourceSite': instance.sourceSite,
      'linkDetail': instance.linkDetail,
      'logoImgLink': instance.logoImgLink,
      'position': instance.position,
    };
