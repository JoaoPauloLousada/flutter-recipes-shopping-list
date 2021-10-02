import 'package:recipes_shopping_list/modules/ingredients/domain/units_enum.dart';
import 'package:recipes_shopping_list/modules/interfaces/ingredient_interface.dart';

class Ingredient implements IIgredient {
  String _name = '';
  IngredientUnit _unit = IngredientUnit.GRAMS;

  Ingredient(this._name, this._unit);
  Ingredient.empty();

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
