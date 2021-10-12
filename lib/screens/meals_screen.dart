import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';
import 'package:recipes_shopping_list/core/widgets/layouts/default.dart';
import 'package:recipes_shopping_list/modules/meal/domain/meal_model.dart';
import 'package:recipes_shopping_list/modules/meal/domain/meal_service.dart';
import 'package:recipes_shopping_list/modules/meal/ui/meals_list.dart';

class MealsScreen extends StatefulWidget {
  MealsScreen({Key? key}) : super(key: key);

  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  MealService mealService = new MealService();

  late Future<List<Meal>> list;

  @override
  void initState() {
    super.initState();
    list = mealService.getMealsList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: list,
      builder: (context, snapshot) => LayoutDefault(
        body: Center(
          child: snapshot.hasData
              ? MealsList(list: snapshot.data as List<Meal>)
              : Text('Tipos de refeição'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(
              context,
              getRouteName(RoutesNames.NEW_MEAL),
            );
          },
        ),
      ),
    );
    // return LayoutDefault(
    //   body: Text('Meals'),
    // );
  }
}
