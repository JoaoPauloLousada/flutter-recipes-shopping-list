import 'package:recipes_shopping_list/modules/interfaces/recipe_interface.dart';

class Meal {
  String _name = '';
  Set<IRecipe> _recipes = {};

  String get name {
    return this._name;
  }

  set name(String n) {
    this._name = n;
  }

  Set<IRecipe> get recipes {
    return this._recipes;
  }

  set recipes(Set<IRecipe> r) {
    this._recipes = r;
  }
}
