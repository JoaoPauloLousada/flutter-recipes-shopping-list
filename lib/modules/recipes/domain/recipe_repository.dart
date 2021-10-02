import 'package:recipes_shopping_list/modules/recipes/domain/mock_recipes.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/recipe_model.dart';

class RecipeRepository {
  Future<List<Recipe>> getRecipeList() {
    return Future.value(mockRecipeList);
  }
}
