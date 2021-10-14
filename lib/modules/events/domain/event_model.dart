import 'package:recipes_shopping_list/modules/meal/domain/meal_model.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/recipe_model.dart';

class Event {
  Meal? _meal;
  DateTime? _dateTime;
  List<Recipe>? _recipes;

  Event({meal, dateTime, recipes}) {
    this.meal = meal;
    this.dateTime = dateTime;
    this.recipes = recipes;
  }

  Meal? get meal {
    return this._meal;
  }

  set meal(Meal? m) {
    this._meal = m;
  }

  DateTime? get dateTime {
    return this._dateTime;
  }

  set dateTime(DateTime? d) {
    this._dateTime = d;
  }

  List<Recipe>? get recipes {
    return this._recipes;
  }

  set recipes(List<Recipe>? r) {
    this._recipes = r;
  }
}
