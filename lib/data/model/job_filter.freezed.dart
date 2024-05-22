// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobFilter _$JobFilterFromJson(Map<String, dynamic> json) {
  return _JobFilter.fromJson(json);
}

/// @nodoc
mixin _$JobFilter {
  @JsonKey(toJson: positionToJson)
  Set<String> get position => throw _privateConstructorUsedError;
  @JsonKey(toJson: postedAfterToJson)
  DateTime? get pubDate => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobFilterCopyWith<JobFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobFilterCopyWith<$Res> {
  factory $JobFilterCopyWith(JobFilter value, $Res Function(JobFilter) then) =
      _$JobFilterCopyWithImpl<$Res, JobFilter>;
  @useResult
  $Res call(
      {@JsonKey(toJson: positionToJson) Set<String> position,
      @JsonKey(toJson: postedAfterToJson) DateTime? pubDate,
      String? location,
      String? company});
}

/// @nodoc
class _$JobFilterCopyWithImpl<$Res, $Val extends JobFilter>
    implements $JobFilterCopyWith<$Res> {
  _$JobFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? pubDate = freezed,
    Object? location = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobFilterImplCopyWith<$Res>
    implements $JobFilterCopyWith<$Res> {
  factory _$$JobFilterImplCopyWith(
          _$JobFilterImpl value, $Res Function(_$JobFilterImpl) then) =
      __$$JobFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: positionToJson) Set<String> position,
      @JsonKey(toJson: postedAfterToJson) DateTime? pubDate,
      String? location,
      String? company});
}

/// @nodoc
class __$$JobFilterImplCopyWithImpl<$Res>
    extends _$JobFilterCopyWithImpl<$Res, _$JobFilterImpl>
    implements _$$JobFilterImplCopyWith<$Res> {
  __$$JobFilterImplCopyWithImpl(
      _$JobFilterImpl _value, $Res Function(_$JobFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? pubDate = freezed,
    Object? location = freezed,
    Object? company = freezed,
  }) {
    return _then(_$JobFilterImpl(
      position: null == position
          ? _value._position
          : position // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobFilterImpl extends _JobFilter {
  _$JobFilterImpl(
      {@JsonKey(toJson: positionToJson) final Set<String> position = const {},
      @JsonKey(toJson: postedAfterToJson) this.pubDate,
      this.location,
      this.company})
      : _position = position,
        super._();

  factory _$JobFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobFilterImplFromJson(json);

  final Set<String> _position;
  @override
  @JsonKey(toJson: positionToJson)
  Set<String> get position {
    if (_position is EqualUnmodifiableSetView) return _position;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_position);
  }

  @override
  @JsonKey(toJson: postedAfterToJson)
  final DateTime? pubDate;
  @override
  final String? location;
  @override
  final String? company;

  @override
  String toString() {
    return 'JobFilter(position: $position, pubDate: $pubDate, location: $location, company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobFilterImpl &&
            const DeepCollectionEquality().equals(other._position, _position) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_position),
      pubDate,
      location,
      company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobFilterImplCopyWith<_$JobFilterImpl> get copyWith =>
      __$$JobFilterImplCopyWithImpl<_$JobFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobFilterImplToJson(
      this,
    );
  }
}

abstract class _JobFilter extends JobFilter {
  factory _JobFilter(
      {@JsonKey(toJson: positionToJson) final Set<String> position,
      @JsonKey(toJson: postedAfterToJson) final DateTime? pubDate,
      final String? location,
      final String? company}) = _$JobFilterImpl;
  _JobFilter._() : super._();

  factory _JobFilter.fromJson(Map<String, dynamic> json) =
      _$JobFilterImpl.fromJson;

  @override
  @JsonKey(toJson: positionToJson)
  Set<String> get position;
  @override
  @JsonKey(toJson: postedAfterToJson)
  DateTime? get pubDate;
  @override
  String? get location;
  @override
  String? get company;
  @override
  @JsonKey(ignore: true)
  _$$JobFilterImplCopyWith<_$JobFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
