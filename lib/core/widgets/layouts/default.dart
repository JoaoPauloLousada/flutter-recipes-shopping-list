import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/widgets/drawer.dart';

class LayoutDefault extends StatelessWidget {
  const LayoutDefault({
    Key? key,
    required this.body,
    this.floatingActionButton,
  }) : super(key: key);

  final Widget body;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
