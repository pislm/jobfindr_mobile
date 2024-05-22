// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_jobs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetJobsResponse _$GetJobsResponseFromJson(Map<String, dynamic> json) {
  return _GetJobsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetJobsResponse {
  List<JobModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetJobsResponseCopyWith<GetJobsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetJobsResponseCopyWith<$Res> {
  factory $GetJobsResponseCopyWith(
          GetJobsResponse value, $Res Function(GetJobsResponse) then) =
      _$GetJobsResponseCopyWithImpl<$Res, GetJobsResponse>;
  @useResult
  $Res call({List<JobModel> data});
}

/// @nodoc
class _$GetJobsResponseCopyWithImpl<$Res, $Val extends GetJobsResponse>
    implements $GetJobsResponseCopyWith<$Res> {
  _$GetJobsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetJobsResponseImplCopyWith<$Res>
    implements $GetJobsResponseCopyWith<$Res> {
  factory _$$GetJobsResponseImplCopyWith(_$GetJobsResponseImpl value,
          $Res Function(_$GetJobsResponseImpl) then) =
      __$$GetJobsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<JobModel> data});
}

/// @nodoc
class __$$GetJobsResponseImplCopyWithImpl<$Res>
    extends _$GetJobsResponseCopyWithImpl<$Res, _$GetJobsResponseImpl>
    implements _$$GetJobsResponseImplCopyWith<$Res> {
  __$$GetJobsResponseImplCopyWithImpl(
      _$GetJobsResponseImpl _value, $Res Function(_$GetJobsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetJobsResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetJobsResponseImpl extends _GetJobsResponse {
  _$GetJobsResponseImpl({required final List<JobModel> data})
      : _data = data,
        super._();

  factory _$GetJobsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetJobsResponseImplFromJson(json);

  final List<JobModel> _data;
  @override
  List<JobModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetJobsResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJobsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetJobsResponseImplCopyWith<_$GetJobsResponseImpl> get copyWith =>
      __$$GetJobsResponseImplCopyWithImpl<_$GetJobsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetJobsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetJobsResponse extends GetJobsResponse {
  factory _GetJobsResponse({required final List<JobModel> data}) =
      _$GetJobsResponseImpl;
  _GetJobsResponse._() : super._();

  factory _GetJobsResponse.fromJson(Map<String, dynamic> json) =
      _$GetJobsResponseImpl.fromJson;

  @override
  List<JobModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetJobsResponseImplCopyWith<_$GetJobsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
