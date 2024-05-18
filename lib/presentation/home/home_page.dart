import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:jobfindr_mobile/core/router.dart';
import 'package:jobfindr_mobile/presentation/home/components/job_filters_widget.dart';

import '../../data/model/job_model.dart';
import 'home_page_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('JobFindr'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 14),
          const JobFiltersWidget(),
          const SizedBox(height: 14),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () =>
                  Future.sync(() => state.pagingController.refresh()),
              child: PagedListView(
                pagingController: state.pagingController,
                builderDelegate: PagedChildBuilderDelegate<JobModel>(
                  itemBuilder: (context, job, index) {
                    return ListTile(
                      onTap: () => context.push(
                        JobFindrRouter.jobDetails(job.id),
                        extra: job,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Hero(
                          tag: 'logo_${job.id}',
                          child: CachedNetworkImage(imageUrl: job.logoImgLink),
                        ),
                      ),
                      title: Hero(
                        tag: 'title_${job.id}',
                        child: Text(
                          job.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      subtitle: Text('${job.company}\n${job.location}'),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
