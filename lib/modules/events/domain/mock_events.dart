import 'package:recipes_shopping_list/modules/events/domain/event_model.dart';
import 'package:recipes_shopping_list/modules/meal/domain/meal_model.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/mock_recipes.dart';

List<Event> mockEventsListSmall = [
  new Event(
    meal: new Meal('Café da manhã'),
    dateTime: DateTime.now(),
    recipes: mockRecipeList,
  ),
  new Event(
    meal: new Meal('Almoço'),
    dateTime: DateTime.now(),
    recipes: mockRecipeList,
  ),
  new Event(
    meal: new Meal('Lanche da tarde'),
    dateTime: DateTime.now(),
    recipes: mockRecipeList,
  ),
  new Event(
    meal: new Meal('Jantar'),
    dateTime: DateTime.now(),
    recipes: mockRecipeList,
  ),
  new Event(
    meal: new Meal('Ceia'),
    dateTime: DateTime.now(),
    recipes: mockRecipeList,
  ),
];

List<Event> mockEventsList = List.filled(
  2000,
  new Event(
    meal: new Meal('Café da manhã'),
    dateTime: DateTime.now(),
    recipes: mockRecipeList,
  ),
);
