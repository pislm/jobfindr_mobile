import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextInputDialog extends HookConsumerWidget {
  const TextInputDialog({
    required this.title,
    this.initialText,
    required this.onApply,
    super.key,
  });

  final String title;
  final String? initialText;
  final void Function(String) onApply;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController(text: initialText);
    return AlertDialog(
      title: Text(title),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: [
        TextButton(
          onPressed: () {
            onApply('');
            Navigator.of(context).pop();
          },
          child: const Text('Clear Filter'),
        ),
        TextButton(
          onPressed: () {
            onApply(controller.text);
            Navigator.of(context).pop();
          },
          child: const Text('Apply'),
        ),
      ],
    );
  }
}
