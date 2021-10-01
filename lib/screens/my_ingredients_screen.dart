import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';
import 'package:recipes_shopping_list/core/widgets/layouts/default.dart';

class MyIngredientsScreen extends StatefulWidget {
  MyIngredientsScreen({Key? key}) : super(key: key);

  @override
  _MyIngredientsScreenState createState() => _MyIngredientsScreenState();
}

class _MyIngredientsScreenState extends State<MyIngredientsScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutDefault(
      body: Center(
        child: Text('my ingredients'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(
              context, getRouteName(RoutesNames.NEW_INGREDIENT));
        },
      ),
    );
  }
}
