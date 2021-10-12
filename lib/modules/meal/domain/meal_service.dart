import 'package:recipes_shopping_list/modules/meal/domain/meal_model.dart';
import 'package:recipes_shopping_list/modules/meal/domain/meal_repository.dart';

class MealService {
  MealRepository mealRepository = new MealRepository();

  Future<List<Meal>> getMealsList() {
    return mealRepository.getMealsList();
  }

  Future<bool> saveMeal(Meal meal) {
    return mealRepository.store(meal);
  }
}
