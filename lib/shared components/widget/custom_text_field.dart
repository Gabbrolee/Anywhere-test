import 'package:anywhere/provider/characters_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomTextField extends ConsumerWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        onChanged: (value) {
          ref.read(characterProvider.notifier).setListItems();
        },
        controller: ref.watch(characterProvider).textEditingController,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            hintText: "Search",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
