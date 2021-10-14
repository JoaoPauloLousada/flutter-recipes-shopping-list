import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/units_enum.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/recipe_model.dart';

List<Recipe> mockRecipeList = [
  new Recipe(
    'Arroz branco',
    'Descriçao arroz branco.',
    [
      new Ingredient('arroz', IngredientUnit.KILOGRAMS),
    ],
  ),
  new Recipe(
    'Carne de panela',
    'Descrição carne de panela',
    [
      new Ingredient('Carne', IngredientUnit.KILOGRAMS),
    ],
  ),
  new Recipe(
    'Feijão cozido',
    'Descrição feijão cozido.',
    [
      new Ingredient('Feijão', IngredientUnit.KILOGRAMS),
      new Ingredient('Alho', IngredientUnit.KILOGRAMS),
    ],
  ),
  new Recipe(
    'Mandioca cozida',
    'Descrição mandioca cozida.',
    [
      new Ingredient('Mandioca', IngredientUnit.KILOGRAMS),
    ],
  ),
];
