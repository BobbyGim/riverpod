import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/riverpod/auto_dispose_modifier_provider.dart';

class AutoDisposeModifierScreen extends ConsumerWidget {
  const AutoDisposeModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(autoDisposeModifierProvider);

    return DefaultLayout(
      title: "Auto Dispose Modifier",
      child: Center(
        child: state.when(
          data: (data) => Text(data.toString()),
          error: (error, stack) => Text("Error: $error"),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
