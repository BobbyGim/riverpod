import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/model/shopping_item_model.dart';
import 'package:untitled/riverpod/state_notifier_provider.dart';

final filteredShoppingList = Provider<List<ShoppingItemModel>>((ref) {
  final filterState = ref.watch(filterProvider);
  final shoppingListState = ref.watch(shoppingListProvider);

  if (filterState == FilterState.all) {
    return shoppingListState;
  }

  return shoppingListState.where((item) {
    return filterState == FilterState.spicy ? item.isSpicy : !item.isSpicy;
  }).toList();
});

enum FilterState { all, spicy, notSpicy }

final filterProvider = StateProvider<FilterState>(((ref) => FilterState.all));
