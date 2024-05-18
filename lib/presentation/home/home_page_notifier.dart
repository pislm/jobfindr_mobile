import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jobfindr_mobile/core/logger.dart';
import 'package:jobfindr_mobile/data/model/job_filter.dart';
import 'package:jobfindr_mobile/presentation/home/home_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/jobfindr_repository.dart';
import '../../data/model/job_model.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  final _repository = GetIt.I.get<JobFindrRepository>();
  static const _pageSize = 20;

  @override
  HomePageState build() {
    final pagingController = PagingController<int, JobModel>(firstPageKey: 1);
    pagingController.addPageRequestListener(_fetchPage);
    return HomePageState(
      filter: JobFilter(),
      pagingController: pagingController,
    );
  }

  Future<void> _fetchPage(int pageKey) async {
    final filter = state.filter;
    try {
      final jobs =
          await _repository.getJobs(filter, page: pageKey, size: _pageSize);
      final isLastPage = jobs.length < _pageSize;
      if (isLastPage) {
        state.pagingController.appendLastPage(jobs);
      } else {
        final nextPageKey = pageKey + 1;
        state.pagingController.appendPage(jobs, nextPageKey);
      }
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      state.pagingController.error = e;
    }
  }

  void setFilter(JobFilter filter) {
    state = state.copyWith(filter: filter);
  }
}
