import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/screens/events_timeline_screen.dart';
import 'package:recipes_shopping_list/screens/home_screen.dart';
import 'package:recipes_shopping_list/screens/meals_screen.dart';
import 'package:recipes_shopping_list/screens/my_ingredients_screen.dart';
import 'package:recipes_shopping_list/screens/my_recipes_screen.dart';
import 'package:recipes_shopping_list/screens/new_ingredient.dart';
import 'package:recipes_shopping_list/screens/new_meal_screen.dart';
import 'package:recipes_shopping_list/screens/new_recipe_screen.dart';

enum RoutesNames {
  INITIAL,
  MY_INGREDIENTS,
  NEW_INGREDIENT,
  MY_RECIPES,
  NEW_RECIPE,
  MEALS,
  NEW_MEAL,
}

Map<RoutesNames, String> routesNames = {
  RoutesNames.INITIAL: '/',
  RoutesNames.MY_INGREDIENTS: '/my-ingredients',
  RoutesNames.NEW_INGREDIENT: '/new-ingredient',
  RoutesNames.MY_RECIPES: '/my-recipes',
  RoutesNames.NEW_RECIPE: '/new-recipe',
  RoutesNames.MEALS: '/meals',
  RoutesNames.NEW_MEAL: '/new-meals',
};

String getRouteName(RoutesNames name) {
  return routesNames[name].toString();
}

Map<String, Widget Function(BuildContext)> routes = {
  // getRouteName(RoutesNames.INITIAL): (context) => HomeScreen(),
  getRouteName(RoutesNames.INITIAL): (context) => EventsTimelineScreen(),
  getRouteName(RoutesNames.MY_INGREDIENTS): (context) => MyIngredientsScreen(),
  getRouteName(RoutesNames.NEW_INGREDIENT): (context) => NewIngredientScreen(),
  getRouteName(RoutesNames.MY_RECIPES): (context) => MyRecipesScreen(),
  getRouteName(RoutesNames.NEW_RECIPE): (context) => NewRecipeScreen(),
  getRouteName(RoutesNames.MEALS): (context) => MealsScreen(),
  getRouteName(RoutesNames.NEW_MEAL): (context) => NewMealScreen(),
};
