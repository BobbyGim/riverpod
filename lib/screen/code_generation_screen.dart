import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("CodeGenerationScreen build");

    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gFutureStateProvider);
    final state3 = ref.watch(gFutureState2Provider);
    final state4 = ref.watch(gStateMultiplyProvider(num1: 10, num2: 20));

    return DefaultLayout(
      title: "Code Generation Screen",
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("state1 : $state1"),
            state2.when(
              data: (data) => Column(children: [Text("state2 : $data")]),
              error: (error, stack) =>
                  Text("Error: $error", textAlign: TextAlign.center),
              loading: () => Center(child: CircularProgressIndicator()),
            ),

            state3.when(
              data: (data) => Column(children: [Text("state2 : $data")]),
              error: (error, stack) =>
                  Text("Error: $error", textAlign: TextAlign.center),
              loading: () => Center(child: CircularProgressIndicator()),
            ),

            Text("state4 : $state4"),

            Consumer(
              builder: (context, WidgetRef ref, child) {
                final state5 = ref.watch(gStateNotifierProvider);

                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("state5 : $state5"), child!],
                );
              },
              child: Text(" State"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(gStateNotifierProvider.notifier).increment();
                  },
                  child: Text("Increment"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    ref.read(gStateNotifierProvider.notifier).decrement();
                  },
                  child: Text("Decrement"),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () {
                ref.invalidate(gStateNotifierProvider);
              },

              child: Text("Invalidate State Notifier"),
            ),
          ],
        ),
      ),
    );
  }
}
