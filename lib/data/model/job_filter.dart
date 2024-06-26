import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'job_filter.freezed.dart';
part 'job_filter.g.dart';

@freezed
class JobFilter with _$JobFilter {
  const JobFilter._();

  factory JobFilter({
    @Default({}) @JsonKey(toJson: positionToJson) Set<String> position,
    @JsonKey(toJson: postedAfterToJson) DateTime? pubDate,
    String? location,
    String? company,
  }) = _JobFilter;

  factory JobFilter.fromJson(Map<String, dynamic> json) =>
      _$JobFilterFromJson(json);

  static const roleOptions = [
    'Programmer',
    'Data',
    'Network',
    'Cyber Security',
  ];
}

String? postedAfterToJson(DateTime? postedAfter) {
  if (postedAfter == null) return null;

  final formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(postedAfter);
}

String? positionToJson(Set<String> position) {
  if (position.isEmpty) return null;

  return position.join(',');
}
