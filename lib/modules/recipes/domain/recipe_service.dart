import 'package:recipes_shopping_list/modules/recipes/domain/recipe_model.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/recipe_repository.dart';

class RecipeService {
  RecipeRepository recipeRepository = new RecipeRepository();

  Future<List<Recipe>> getRecipeList() {
    return recipeRepository.getRecipeList();
  }
}
