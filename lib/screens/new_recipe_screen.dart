import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('Nova receita'),
      ),
    );
  }
}
