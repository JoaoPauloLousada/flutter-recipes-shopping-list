import 'package:recipes_shopping_list/modules/meal/domain/meal_model.dart';
import 'package:recipes_shopping_list/modules/meal/domain/mock_meals.dart';

class MealRepository {
  Future<List<Meal>> getMealsList() {
    return Future.value(mockMealsList);
  }

  Future<bool> store(Meal meal) {
    mockMealsList.add(meal);
    return Future.value(true);
  }
}
