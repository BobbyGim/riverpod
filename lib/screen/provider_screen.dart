import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/riverpod/provider.dart';
import 'package:untitled/riverpod/state_notifier_provider.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filteredShoppingList);

    return DefaultLayout(
      title: 'ProviderScreen',
      actions: [
        PopupMenuButton<FilterState>(
          itemBuilder: (_) => FilterState.values
              .map((e) => PopupMenuItem(value: e, child: Text(e.name)))
              .toList(),
          onSelected: (value) {
            ref.read(filterProvider.notifier).state = value;
          },
        ),
      ],
      child: ListView(
        children: [
          ...state.map(
            (e) => CheckboxListTile(
              title: Text(e.name),
              subtitle: Text("수량: ${e.quantity}"),
              value: e.hasBought,
              onChanged: (value) {
                ref
                    .read(shoppingListProvider.notifier)
                    .toggleHasBought(name: e.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
