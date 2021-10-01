import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/widgets/appbar.dart';
import 'package:recipes_shopping_list/core/widgets/drawer.dart';
import 'package:recipes_shopping_list/core/widgets/layouts/default.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutDefault(
      body: Center(
        child: Text('body'),
      ),
    );
  }
}
