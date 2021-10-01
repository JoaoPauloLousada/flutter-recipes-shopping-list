import 'package:recipes_shopping_list/modules/interfaces/ingredient_interface.dart';

class Recipe {
  String _name = '';
  Set<IIgredient> _ingredients = {};

  String get name {
    return this._name;
  }

  set name(String n) {
    this._name = n;
  }

  Set<IIgredient> get ingredients {
    return this._ingredients;
  }

  set ingredients(Set<IIgredient> i) {
    this._ingredients = i;
  }
}
