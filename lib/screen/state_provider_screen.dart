import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/riverpod/state_provider_screen.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(numberProvider);

    return DefaultLayout(
      title: "State Provider",

      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(provider.toString()),

            ElevatedButton(
              onPressed: () {
                ref.read(numberProvider.notifier).update((state) => state + 1);
              },
              child: Text("UP"),
            ),

            ElevatedButton(
              onPressed: () {
                ref.read(numberProvider.notifier).state--;
              },
              child: Text("DOWN"),
            ),
          ],
        ),
      ),
    );
  }
}
