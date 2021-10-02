import 'dart:io';

import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/mock_ingredients_response.dart';

class IngredientService {
  IngredientService({
    required this.http,
  });
  final HttpClient http;

  Future<List<Ingredient>> getIngredientsList() {
    return Future.value(mockIngredientList);
  }
}
