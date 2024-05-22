import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jobfindr_mobile/data/model/job_filter.dart';
import 'package:jobfindr_mobile/presentation/home/home_page_notifier.dart';

class JobTypeDialog extends HookConsumerWidget {
  const JobTypeDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex =
        useState(ref.read(homePageNotifierProvider).filter.position);
    return AlertDialog(
      title: const Text('Job Type'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: JobFilter.roleOptions
            .map(
              (role) => CheckboxListTile(
                value: selectedIndex.value.contains(role),
                onChanged: (value) {
                  selectedIndex.value = value!
                      ? {...selectedIndex.value, role}
                      : Set.from(selectedIndex.value.where((e) => e != role));
                },
                title: Text(role),
              ),
            )
            .toList(),
      ),
      actions: [
        TextButton(
          onPressed: () {
            ref.read(homePageNotifierProvider.notifier).setFilter(
                  ref
                      .read(homePageNotifierProvider)
                      .filter
                      .copyWith(position: <String>{}),
                );
            Navigator.of(context).pop();
          },
          child: const Text('Clear Filter'),
        ),
        TextButton(
          onPressed: () {
            ref.read(homePageNotifierProvider.notifier).setFilter(
                  ref
                      .read(homePageNotifierProvider)
                      .filter
                      .copyWith(position: selectedIndex.value),
                );
            Navigator.of(context).pop();
          },
          child: const Text('Apply'),
        ),
      ],
    );
  }
}
