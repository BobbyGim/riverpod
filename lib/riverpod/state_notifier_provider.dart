import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/model/shopping_item_model.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
      (ref) => ShoppingListNotifier(),
    );

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNotifier()
    : super([
        ShoppingItemModel(
          name: '김치',
          quantity: 3,
          hasBought: false,
          isSpicy: true,
        ),
        ShoppingItemModel(
          name: '라면',
          quantity: 5,
          hasBought: false,
          isSpicy: true,
        ),
        ShoppingItemModel(
          name: '삼겹살',
          quantity: 10,
          hasBought: false,
          isSpicy: false,
        ),
        ShoppingItemModel(
          name: '수박',
          quantity: 3,
          hasBought: false,
          isSpicy: false,
        ),
        ShoppingItemModel(
          name: '카스테라',
          quantity: 3,
          hasBought: false,
          isSpicy: true,
        ),
      ]);

  void toggleHasBought({required String name}) {
    state = state
        .map(
          (e) => e.name == name
              ? ShoppingItemModel(
                  name: e.name,
                  quantity: e.quantity,
                  hasBought: !e.hasBought,
                  isSpicy: e.isSpicy,
                )
              : e,
        )
        .toList();
  }

  void addItem(ShoppingItemModel item) {
    state = [...state, item];
  }

  void removeItem(ShoppingItemModel item) {
    state = state.where((i) => i != item).toList();
  }

  void updateItem(ShoppingItemModel oldItem, ShoppingItemModel newItem) {
    state = [
      for (final item in state)
        if (item == oldItem) newItem else item,
    ];
  }
}
