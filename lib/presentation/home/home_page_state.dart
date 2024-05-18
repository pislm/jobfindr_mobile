import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobfindr_mobile/data/model/job_filter.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../data/model/job_model.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();

  factory HomePageState({
    required JobFilter filter,
    required PagingController<int, JobModel> pagingController,
  }) = _HomePageState;
}
