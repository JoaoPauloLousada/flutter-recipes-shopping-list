import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/units_enum.dart';

class MyIngredientsList extends StatelessWidget {
  const MyIngredientsList({Key? key, required this.list}) : super(key: key);
  final List<Ingredient> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index].name),
          subtitle: Text('Unit: ${getIngredientUnit(list[index].unit)}'),
          trailing: Icon(Icons.drag_handle),
          onLongPress: () {
            print('Delete or edit action');
          },
        );
      },
    );
  }
}
