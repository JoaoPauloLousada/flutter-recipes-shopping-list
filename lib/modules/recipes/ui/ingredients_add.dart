import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_repository.dart';

class IngredientsAdd extends StatefulWidget {
  IngredientsAdd({Key? key}) : super(key: key);

  @override
  _IngredientsAddState createState() => _IngredientsAddState();
}

class _IngredientsAddState extends State<IngredientsAdd> {
  List<Ingredient> _searchList = [];
  IngredientRepository ingredientRepository = IngredientRepository.getIntance();

  void _getList(String? query) {
    print('_getList $query');
    ingredientRepository.getIngredientsByName(query).then((value) {
      print('list $value');
      return value;
    }).then((value) => _searchList = value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Add ingredients'),
    );
  }
}
