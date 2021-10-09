import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/mock_ingredients_response.dart';

class IngredientRepository {
  static IngredientRepository? _instance;

  static IngredientRepository getIntance() {
    if (_instance == null) _instance = new IngredientRepository();
    return _instance!;
  }

  Future<List<Ingredient>> getIngredientsByName(String? name) {
    return Future(() {
      print('getIngredientsByName $name');
      if (name == null || name.isEmpty) return [];
      return mockIngredientList
          .where((element) => element.name.contains(name))
          .toList();
    });
  }
}
