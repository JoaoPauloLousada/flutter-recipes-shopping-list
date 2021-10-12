import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/modules/meal/domain/meal_model.dart';

class MealsList extends StatelessWidget {
  const MealsList({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Meal> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index].name),
            trailing: Icon(Icons.drag_handle),
            onLongPress: () {
              print('Delete or edit action');
            },
          );
        });
  }
}
