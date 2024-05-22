// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobModel _$JobModelFromJson(Map<String, dynamic> json) {
  return _JobModel.fromJson(json);
}

/// @nodoc
mixin _$JobModel {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateFromJson)
  DateTime get publicationDate => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get sourceSite => throw _privateConstructorUsedError;
  String get linkDetail => throw _privateConstructorUsedError;
  String get logoImgLink => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobModelCopyWith<JobModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobModelCopyWith<$Res> {
  factory $JobModelCopyWith(JobModel value, $Res Function(JobModel) then) =
      _$JobModelCopyWithImpl<$Res, JobModel>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(fromJson: dateFromJson) DateTime publicationDate,
      String location,
      String company,
      String sourceSite,
      String linkDetail,
      String logoImgLink,
      String position});
}

/// @nodoc
class _$JobModelCopyWithImpl<$Res, $Val extends JobModel>
    implements $JobModelCopyWith<$Res> {
  _$JobModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? publicationDate = null,
    Object? location = null,
    Object? company = null,
    Object? sourceSite = null,
    Object? linkDetail = null,
    Object? logoImgLink = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      publicationDate: null == publicationDate
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      sourceSite: null == sourceSite
          ? _value.sourceSite
          : sourceSite // ignore: cast_nullable_to_non_nullable
              as String,
      linkDetail: null == linkDetail
          ? _value.linkDetail
          : linkDetail // ignore: cast_nullable_to_non_nullable
              as String,
      logoImgLink: null == logoImgLink
          ? _value.logoImgLink
          : logoImgLink // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobModelImplCopyWith<$Res>
    implements $JobModelCopyWith<$Res> {
  factory _$$JobModelImplCopyWith(
          _$JobModelImpl value, $Res Function(_$JobModelImpl) then) =
      __$$JobModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(fromJson: dateFromJson) DateTime publicationDate,
      String location,
      String company,
      String sourceSite,
      String linkDetail,
      String logoImgLink,
      String position});
}

/// @nodoc
class __$$JobModelImplCopyWithImpl<$Res>
    extends _$JobModelCopyWithImpl<$Res, _$JobModelImpl>
    implements _$$JobModelImplCopyWith<$Res> {
  __$$JobModelImplCopyWithImpl(
      _$JobModelImpl _value, $Res Function(_$JobModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? publicationDate = null,
    Object? location = null,
    Object? company = null,
    Object? sourceSite = null,
    Object? linkDetail = null,
    Object? logoImgLink = null,
    Object? position = null,
  }) {
    return _then(_$JobModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      publicationDate: null == publicationDate
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      sourceSite: null == sourceSite
          ? _value.sourceSite
          : sourceSite // ignore: cast_nullable_to_non_nullable
              as String,
      linkDetail: null == linkDetail
          ? _value.linkDetail
          : linkDetail // ignore: cast_nullable_to_non_nullable
              as String,
      logoImgLink: null == logoImgLink
          ? _value.logoImgLink
          : logoImgLink // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobModelImpl extends _JobModel {
  _$JobModelImpl(
      {required this.title,
      @JsonKey(fromJson: dateFromJson) required this.publicationDate,
      required this.location,
      required this.company,
      required this.sourceSite,
      required this.linkDetail,
      required this.logoImgLink,
      required this.position})
      : super._();

  factory _$JobModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobModelImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(fromJson: dateFromJson)
  final DateTime publicationDate;
  @override
  final String location;
  @override
  final String company;
  @override
  final String sourceSite;
  @override
  final String linkDetail;
  @override
  final String logoImgLink;
  @override
  final String position;

  @override
  String toString() {
    return 'JobModel(title: $title, publicationDate: $publicationDate, location: $location, company: $company, sourceSite: $sourceSite, linkDetail: $linkDetail, logoImgLink: $logoImgLink, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.publicationDate, publicationDate) ||
                other.publicationDate == publicationDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.sourceSite, sourceSite) ||
                other.sourceSite == sourceSite) &&
            (identical(other.linkDetail, linkDetail) ||
                other.linkDetail == linkDetail) &&
            (identical(other.logoImgLink, logoImgLink) ||
                other.logoImgLink == logoImgLink) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, publicationDate, location,
      company, sourceSite, linkDetail, logoImgLink, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobModelImplCopyWith<_$JobModelImpl> get copyWith =>
      __$$JobModelImplCopyWithImpl<_$JobModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobModelImplToJson(
      this,
    );
  }
}

abstract class _JobModel extends JobModel {
  factory _JobModel(
      {required final String title,
      @JsonKey(fromJson: dateFromJson) required final DateTime publicationDate,
      required final String location,
      required final String company,
      required final String sourceSite,
      required final String linkDetail,
      required final String logoImgLink,
      required final String position}) = _$JobModelImpl;
  _JobModel._() : super._();

  factory _JobModel.fromJson(Map<String, dynamic> json) =
      _$JobModelImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(fromJson: dateFromJson)
  DateTime get publicationDate;
  @override
  String get location;
  @override
  String get company;
  @override
  String get sourceSite;
  @override
  String get linkDetail;
  @override
  String get logoImgLink;
  @override
  String get position;
  @override
  @JsonKey(ignore: true)
  _$$JobModelImplCopyWith<_$JobModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
