import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/modules/ingredients/ui/new_ingredient_form.dart';

class NewIngredientScreen extends StatefulWidget {
  NewIngredientScreen({Key? key}) : super(key: key);

  @override
  _NewIngredientScreenState createState() => _NewIngredientScreenState();
}

class _NewIngredientScreenState extends State<NewIngredientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: NewIngredientForm(),
        ),
      ),
    );
  }
}
