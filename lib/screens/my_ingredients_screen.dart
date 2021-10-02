import 'dart:io';

import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';
import 'package:recipes_shopping_list/core/widgets/layouts/default.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_service.dart';
import 'package:recipes_shopping_list/modules/ingredients/ui/my_ingredients_list.dart';

class MyIngredientsScreen extends StatefulWidget {
  MyIngredientsScreen({Key? key}) : super(key: key);

  @override
  _MyIngredientsScreenState createState() => _MyIngredientsScreenState();
}

class _MyIngredientsScreenState extends State<MyIngredientsScreen> {
  IngredientService ingredientService =
      new IngredientService(http: new HttpClient());

  late Future<List<Ingredient>> list;

  @override
  void initState() {
    super.initState();
    list = this.ingredientService.getIngredientsList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: list,
      builder: (context, snapshot) {
        return LayoutDefault(
          body: Center(
            child: snapshot.hasData
                ? MyIngredientsList(list: snapshot.data as List<Ingredient>)
                : Text('my ingredients'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(
                  context, getRouteName(RoutesNames.NEW_INGREDIENT));
            },
          ),
        );
      },
    );
  }
}
