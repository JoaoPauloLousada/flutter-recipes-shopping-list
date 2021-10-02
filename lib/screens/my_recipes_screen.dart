import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';
import 'package:recipes_shopping_list/core/widgets/layouts/default.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/recipe_model.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/recipe_service.dart';
import 'package:recipes_shopping_list/modules/recipes/ui/my_recipes_list.dart';

class MyRecipesScreen extends StatefulWidget {
  MyRecipesScreen({Key? key}) : super(key: key);

  @override
  _MyRecipesScreenState createState() => _MyRecipesScreenState();
}

class _MyRecipesScreenState extends State<MyRecipesScreen> {
  RecipeService recipeService = new RecipeService();

  late Future<List<Recipe>> list;

  @override
  void initState() {
    super.initState();
    list = recipeService.getRecipeList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: list,
      builder: (context, snapshot) {
        return LayoutDefault(
          body: Center(
            child: snapshot.hasData
                ? MyRecipesList(list: snapshot.data as List<Recipe>)
                : Text('Minhas receitas'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(
                  context, getRouteName(RoutesNames.NEW_RECIPE));
            },
          ),
        );
      },
    );
  }
}
