import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/units_enum.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/recipe_model.dart';

List<Recipe> mockRecipeList = [
  new Recipe(
    'Arroz branco',
    [
      new Ingredient('arroz', IngredientUnit.KILOGRAMS),
    ],
  ),
  new Recipe(
    'Carne de panela',
    [
      new Ingredient('Carne', IngredientUnit.KILOGRAMS),
    ],
  ),
];
