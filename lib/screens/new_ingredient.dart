import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/mock_ingredients_response.dart';
import 'package:recipes_shopping_list/modules/ingredients/ui/new_ingredient_form.dart';

class NewIngredientScreen extends StatefulWidget {
  NewIngredientScreen({Key? key}) : super(key: key);

  @override
  _NewIngredientScreenState createState() => _NewIngredientScreenState();
}

class _NewIngredientScreenState extends State<NewIngredientScreen> {
  void formAction(Ingredient ingredient) {
    print('before crete ingredient: $mockIngredientList');
    mockIngredientList.add(ingredient);
    print('after crete ingredient: $mockIngredientList');
    Navigator.pushNamed(context, getRouteName(RoutesNames.MY_INGREDIENTS));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(builder: (context, snapshot) {
        print('snapshot $snapshot');
        return Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: NewIngredientForm(
              onSave: formAction,
            ),
          ),
        );
      }),
    );
  }
}
