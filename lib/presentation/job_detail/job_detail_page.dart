import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jobfindr_mobile/data/model/job_model.dart';
import 'package:url_launcher/url_launcher.dart';

class JobDetailPage extends ConsumerWidget {
  const JobDetailPage({
    required this.job,
    super.key,
  });

  final JobModel job;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Detail'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => launchUrl(Uri.parse(job.linkDetail)),
        icon: const Icon(Icons.link),
        label: const Text('Visit Site'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          children: [
            Hero(
              tag: 'logo_${job.id}',
              child: CachedNetworkImage(
                imageUrl: job.logoImgLink,
                height: 100,
              ),
            ),
            Hero(
              tag: 'title_${job.id}',
              child: Text(
                job.title,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.business),
              title: Text(job.company),
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: Text(job.location),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: Text(
                  'Posted on ${DateFormat.yMMMMd().format(job.publicationDate)}'),
            ),
            ListTile(
              leading: const Icon(Icons.web),
              title: Text(job.sourceSite),
            ),
          ],
        ),
      ),
    );
  }
}
