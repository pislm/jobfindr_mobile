import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jobfindr_mobile/presentation/home/components/job_type_dialog.dart';
import 'package:jobfindr_mobile/presentation/home/components/text_input_dialog.dart';
import 'package:jobfindr_mobile/presentation/home/home_page_notifier.dart';

class JobFiltersWidget extends ConsumerWidget {
  const JobFiltersWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageNotifierProvider);
    return SizedBox(
      height: 36,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Filter',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 12),
          _buildFilterPill(
            context,
            'Job Type${state.filter.position.isEmpty ? '' : ': ${state.filter.position.join(', ')}'}',
            state.filter.position.isNotEmpty,
            () => showDialog(
              context: context,
              builder: (context) => const JobTypeDialog(),
            ),
          ),
          _buildFilterPill(
            context,
            'Posted after${state.filter.pubDate == null ? '' : ': ${DateFormat.yMMMMd().format(state.filter.pubDate!)}'}',
            state.filter.pubDate != null,
            () => showDatePicker(
              context: context,
              firstDate: DateTime.now().subtract(const Duration(days: 61)),
              lastDate: DateTime.now(),
            ).then(
              (date) => ref.read(homePageNotifierProvider.notifier).setFilter(
                    state.filter.copyWith(pubDate: date),
                  ),
            ),
          ),
          _buildFilterPill(
            context,
            'Company name${state.filter.company == null ? '' : ': ${state.filter.company}'}',
            state.filter.company != null,
            () => showDialog(
              context: context,
              builder: (context) => TextInputDialog(
                title: 'Company name',
                initialText: state.filter.company,
                onApply: (value) {
                  ref.read(homePageNotifierProvider.notifier).setFilter(
                        state.filter
                            .copyWith(company: value == '' ? null : value),
                      );
                },
              ),
            ),
          ),
          _buildFilterPill(
            context,
            'Location${state.filter.location == null ? '' : ': ${state.filter.location}'}',
            state.filter.location != null,
            () => showDialog(
              context: context,
              builder: (context) => TextInputDialog(
                title: 'Location',
                initialText: state.filter.location,
                onApply: (value) {
                  ref.read(homePageNotifierProvider.notifier).setFilter(
                        state.filter
                            .copyWith(location: value == '' ? null : value),
                      );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterPill(
    BuildContext context,
    String label,
    bool isActive,
    void Function() onTap,
  ) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: isActive
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(1000),
              border: isActive ? null : Border.all(color: Colors.black),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      );
}
