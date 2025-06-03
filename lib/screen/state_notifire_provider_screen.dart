import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/common/layout/default_layout.dart';
import 'package:untitled/model/shopping_item_model.dart';
import 'package:untitled/riverpod/state_notifier_provider.dart';

class StateNotifireProviderScreen extends ConsumerWidget {
  const StateNotifireProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ShoppingItemModel> state = ref.watch(shoppingListProvider);
    return DefaultLayout(
      title: "State Notifier Provider",
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
