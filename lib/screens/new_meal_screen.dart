import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';
import 'package:recipes_shopping_list/modules/meal/domain/meal_model.dart';
import 'package:recipes_shopping_list/modules/meal/domain/meal_service.dart';
import 'package:recipes_shopping_list/modules/meal/ui/new_meal_form.dart';

class NewMealScreen extends StatefulWidget {
  NewMealScreen({Key? key}) : super(key: key);

  @override
  _NewMealScreenState createState() => _NewMealScreenState();
}

class _NewMealScreenState extends State<NewMealScreen> {
  MealService mealService = new MealService();

  onSave(Meal meal) {
    mealService.saveMeal(meal).then(
        (_) => Navigator.pushNamed(context, getRouteName(RoutesNames.MEALS)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              NewMealForm(onSave: onSave),
            ],
          ),
        ),
      ),
    );
  }
}
