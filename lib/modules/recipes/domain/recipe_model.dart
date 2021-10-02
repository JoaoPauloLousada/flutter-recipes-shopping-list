import 'package:recipes_shopping_list/modules/interfaces/ingredient_interface.dart';

class Recipe {
  Recipe(this._name, this._ingredients);

  String _name = '';
  List<IIgredient> _ingredients = [];

  String get name {
    return this._name;
  }

  set name(String n) {
    this._name = n;
  }

  List<IIgredient> get ingredients {
    return this._ingredients;
  }

  set ingredients(List<IIgredient> i) {
    this._ingredients = i;
  }
}
