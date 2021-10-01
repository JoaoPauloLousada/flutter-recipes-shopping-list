import 'package:recipes_shopping_list/modules/interfaces/ingredient_interface.dart';

class ShoppingList {
  DateTime? _from;
  DateTime? _to;
  Set<IIgredient>? _ingredients;

  DateTime? get from {
    return this._from;
  }

  set from(DateTime? f) {
    this._from = f;
  }

  DateTime? get to {
    return this._to;
  }

  set to(DateTime? t) {
    this.to = t;
  }

  Set<IIgredient>? get ingredients {
    return this._ingredients;
  }

  set ingredients(Set<IIgredient>? i) {
    this._ingredients = i;
  }
}
