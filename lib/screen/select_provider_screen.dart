import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/riverpod/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("build");
    final state = ref.watch(selectProvider.select((value) => value.isSpicy));

    ref.listen(selectProvider.select((value) => value.hasBought), (
      previous,
      next,
    ) {
      print("hasBought changed: $next");
    });

    return DefaultLayout(
      title: "Select Provider Screen",
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.toString()),
            // Text(state.name),

            // Text(state.hasBought ? "구매가능" : "구매 불가능"),

            // Text(state.isSpicy ? "매운 음식" : "안 매운 음식"),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleHasBought();
              },
              child: Text("구매 여부 토글"),
            ),

            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleHasIsSpicy();
              },
              child: Text("매운 음식 여부 토글"),
            ),
          ],
        ),
      ),
    );
  }
}
