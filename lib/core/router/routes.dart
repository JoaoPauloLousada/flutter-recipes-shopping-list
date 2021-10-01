import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/screens/home_screen.dart';
import 'package:recipes_shopping_list/screens/my_ingredients_screen.dart';
import 'package:recipes_shopping_list/screens/new_ingredient.dart';

enum RoutesNames {
  INITIAL,
  MY_INGREDIENTS,
  NEW_INGREDIENT,
}

Map<RoutesNames, String> routesNames = {
  RoutesNames.INITIAL: '/',
  RoutesNames.MY_INGREDIENTS: '/my-ingredients',
  RoutesNames.NEW_INGREDIENT: '/new-ingredient',
};

String getRouteName(RoutesNames name) {
  return routesNames[name].toString();
}

Map<String, Widget Function(BuildContext)> routes = {
  getRouteName(RoutesNames.INITIAL): (context) => HomeScreen(),
  getRouteName(RoutesNames.MY_INGREDIENTS): (context) => MyIngredientsScreen(),
  getRouteName(RoutesNames.NEW_INGREDIENT): (context) => NewIngredientScreen(),
};
