import 'package:recipes_shopping_list/modules/ingredients/domain/units_enum.dart';

class Ingredient {
  String _name = '';
  IngredientUnit _unit = IngredientUnit.GRAMS;

  String get name {
    return this._name;
  }

  set name(String n) {
    this._name = n;
  }

  IngredientUnit get unit {
    return this._unit;
  }

  set unit(IngredientUnit i) {
    this._unit = i;
  }
}
