import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/modules/recipes/ui/ingredients_add.dart';
import 'package:recipes_shopping_list/modules/recipes/ui/new_recipe_form.dart';

class NewRecipeScreen extends StatefulWidget {
  NewRecipeScreen({Key? key}) : super(key: key);

  @override
  _NewRecipeScreenState createState() => _NewRecipeScreenState();
}

class _NewRecipeScreenState extends State<NewRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              NewRecipeForm(),
              IngredientsAdd(),
            ],
          ),
        ),
      ),
    );
  }
}
