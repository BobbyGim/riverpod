import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/riverpod/family_modifier_provider.dart';

class FamilyModifierScreen extends ConsumerWidget {
  const FamilyModifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(familyModifierProvider(3));

    return DefaultLayout(
      title: "FamilyModifierScreen",
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
